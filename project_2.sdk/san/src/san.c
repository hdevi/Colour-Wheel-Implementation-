/*
 * san.c
 *
 *  Created on: 27-Jan-2018
 *      Author: HIMAN
 */


#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "platform.h"
#include "xparameters.h"
#include "xstatus.h"
#include "microblaze_sleep.h"
#include "nexys4IO.h"
#include "pmodOLEDrgb.h"
#include "pmodENC.h"
#include "xgpio.h"
#include "xintc.h"
#include "xtmrctr.h"
#include <math.h>

/************************** Constant Definitions ****************************/

// Clock frequencies
#define CPU_CLOCK_FREQ_HZ		XPAR_CPU_CORE_CLOCK_FREQ_HZ
#define AXI_CLOCK_FREQ_HZ		XPAR_CPU_M_AXI_DP_FREQ_HZ

// AXI timer parameters
#define AXI_TIMER_DEVICE_ID		XPAR_AXI_TIMER_0_DEVICE_ID
#define AXI_TIMER_BASEADDR		XPAR_AXI_TIMER_0_BASEADDR
#define AXI_TIMER_HIGHADDR		XPAR_AXI_TIMER_0_HIGHADDR
#define TmrCtrNumber			0


// Definitions for peripheral NEXYS4IO
#define NX4IO_DEVICE_ID		XPAR_NEXYS4IO_0_DEVICE_ID
#define NX4IO_BASEADDR		XPAR_NEXYS4IO_0_S00_AXI_BASEADDR
#define NX4IO_HIGHADDR		XPAR_NEXYS4IO_0_S00_AXI_HIGHADDR

// Definitions for peripheral PMODOLEDRGB
#define RGBDSPLY_DEVICE_ID		XPAR_PMODOLEDRGB_0_DEVICE_ID
#define RGBDSPLY_GPIO_BASEADDR	XPAR_PMODOLEDRGB_0_AXI_LITE_GPIO_BASEADDR
#define RGBDSPLY_GPIO_HIGHADDR	XPAR_PMODOLEDRGB_0_AXI_LITE_GPIO_HIGHADD
#define RGBDSPLY_SPI_BASEADDR	XPAR_PMODOLEDRGB_0_AXI_LITE_SPI_BASEADDR
#define RGBDSPLY_SPI_HIGHADDR	XPAR_PMODOLEDRGB_0_AXI_LITE_SPI_HIGHADDR

// Definitions for peripheral PMODENC
#define PMODENC_DEVICE_ID		XPAR_PMODENC_0_DEVICE_ID
#define PMODENC_BASEADDR		XPAR_PMODENC_0_S00_AXI_BASEADDR
#define PMODENC_HIGHADDR		XPAR_PMODENC_0_S00_AXI_HIGHADDR

// Fixed Interval timer - 100 MHz input clock, 40KHz output clock
// FIT_COUNT_1MSEC = FIT_CLOCK_FREQ_HZ * .001
#define FIT_IN_CLOCK_FREQ_HZ	CPU_CLOCK_FREQ_HZ
#define FIT_CLOCK_FREQ_HZ		40000
#define FIT_COUNT				(FIT_IN_CLOCK_FREQ_HZ / FIT_CLOCK_FREQ_HZ)
#define FIT_COUNT_1MSEC			40

// GPIO parameters
#define GPIO_0_DEVICE_ID			XPAR_AXI_GPIO_0_DEVICE_ID
#define GPIO_0_INPUT_0_CHANNEL		1
#define GPIO_0_OUTPUT_0_CHANNEL		2

//GPIO 1
#define GPIO_1_DEVICE_ID			XPAR_AXI_GPIO_1_DEVICE_ID
#define GPIO_1_INPUT_0_CHANNEL		1
#define GPIO_1_INPUT_1_CHANNEL		2

//GPIO 2
#define GPIO_2_DEVICE_ID			XPAR_AXI_GPIO_2_DEVICE_ID
#define GPIO_2_INPUT_0_CHANNEL		1
#define GPIO_2_INPUT_1_CHANNEL		2

//GPIO 3
#define GPIO_3_DEVICE_ID			XPAR_AXI_GPIO_3_DEVICE_ID
#define GPIO_3_INPUT_0_CHANNEL		1
#define GPIO_3_INPUT_1_CHANNEL		2


// Interrupt Controller parameters
#define INTC_DEVICE_ID			XPAR_INTC_0_DEVICE_ID
#define FIT_INTERRUPT_ID		XPAR_MICROBLAZE_0_AXI_INTC_FIT_TIMER_0_INTERRUPT_INTR

/**************************** Type Definitions ******************************/

/***************** Macros (Inline Functions) Definitions ********************/

/************************** Variable Definitions ****************************/
// Microblaze peripheral instances
uint64_t 	timestamp = 0L;
PmodOLEDrgb	pmodOLEDrgb_inst;
PmodENC 	pmodENC_inst;
XGpio		GPIOInst0, GPIOInst1, GPIOInst2, GPIOInst3;						// GPIO instance
XIntc 		IntrptCtlrInst;					// Interrupt Controller instance
XTmrCtr		AXITimerInst;				// PWM timer instance

typedef struct{
uint8_t r,g,b;
}rgb;


// The following variables are shared between non-interrupt processing and
// interrupt processing such that they must be global(and declared volatile)
// These variables are controlled by the FIT timer interrupt handler

// GPIO input port
volatile u32			gpio_in;

/************************** Function Prototypes *****************************/
void PMDIO_itoa(int32_t value, char *string, int32_t radix);
void PMDIO_puthex(PmodOLEDrgb* InstancePtr, uint32_t num);
void PMDIO_putnum(PmodOLEDrgb* InstancePtr, int32_t num, int32_t radix);
int	do_init(void);												// initialize system
void FIT_Handler(void);										// fixed interval timer interrupt handler
int AXI_Timer_initialize(void);

void RunOLEDTest(void);
void RunPmodTest(void);
void displayDutyCycle(void);
void hardware_PWMdetection(void);
void software_PWMdetection(void);
rgb hsv_conv_rgb(uint8_t Hue, uint8_t Sat, uint8_t Val);

//Variables to monitor PWM signal at GPIO pins using FIT_Handler
volatile bool R = false;
volatile bool G = false;
volatile bool B = false;

//Variables to calculate duty cycle
volatile u32 RedHigh=1,  GreenHigh=1,  BlueHigh=1;					//Counters to count ON period of the signal
volatile u32 RedLow=0,GreenLow=0,BlueLow=0;							//Counters to count OFF period of the signal
volatile u32 Red_HTemp=0, Green_HTemp=0, Blue_Htemp =0;		//Variables to store temporary values of ON time counters
volatile u32 Red_LTemp=1, Green_LTemp = 1, Blue_LTemp = 1;	//Variables to store temporary values of OFF time counters
volatile u8 RedD=0, BlueD =0, GreenD=0;										//Variables to store duty cycle of Red, Green, Blue signals

//Variables to detect PWM using hardware
volatile u32 Red_H_High, Red_H_Low, Green_H_High, Green_H_Low, Blue_H_High, Blue_H_Low;
volatile u32 Red_H_DutyC, Green_H_DutyC, Blue_H_DutyC;



volatile bool R_posedge=0, R_negedge=0,G_posedge = 0, G_negedge = 0, B_posedge = 0, B_negedge = 0;

/************************** MAIN PROGRAM ************************************/

int main(void)
{
    init_platform();

	uint32_t sts;

	sts = do_init();
	if (XST_SUCCESS != sts)
	{
		exit(1);
	}

	xil_printf("\n*********Initialization complete**********");

	// loop the test until the user presses the center button

	// start the PWM timer and kick of the processing by enabling the Microblaze interrupt
	//PWM_SetParams(&PWMTimerInst, pwm_freq, pwm_duty);
	//PWM_Start(&PWMTimerInst);
		microblaze_enable_interrupts();

		xil_printf("\nECE 544 Color wheel implementation\n\r");

		//Clear OLED screen
		OLEDrgb_Clear(&pmodOLEDrgb_inst);

		//Blank the Seven Segment display digits and turn the decimal points OFF
		NX410_SSEG_setAllDigits(SSEGLO, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);
		NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);

		NX4IO_RGBLED_setChnlEn(RGB1, true, true, true);
				NX4IO_RGBLED_setDutyCycle(RGB1,0,0,0);
				NX4IO_RGBLED_setChnlEn(RGB2,true, true, true);
				NX4IO_RGBLED_setDutyCycle(RGB2,0,0,0);
				//Calculate Duty cycle of Red, Green, Blue signals
		RunPmodTest();

	}


/**************************** TEST Functions **********************************/


void RunPmodTest(void)
{

		//Variables to monitor Hue, Saturation and Value
		rgb RGBColor;
		uint8_t Hue = 0;
		uint16_t HueCount=0, OldHueCount=0;
		uint8_t SatCount=255, OldSatCount=0;
		uint8_t ValCount=255, OldValueCount=0;

		uint16_t RGB = 0;
		uint16_t RotaryIncr =1;								//Increments rotary counter by 1
		bool RotaryNoNeg = false;

		uint16_t sw;
		bool detectionMode = 0;			//0 for software, 1 for hardware


		// test the rotary encoder functions

		pmodENC_init(&pmodENC_inst, RotaryIncr, RotaryNoNeg);	//initializing rotary encoder
		pmodENC_clear_count(&pmodENC_inst);									//Clear the count of rotary encoder

		//Set up the display
		//Clears the display and set labels Hue, Saturation and Value
		OLEDrgb_Clear(&pmodOLEDrgb_inst);
		OLEDrgb_SetFontColor(&pmodOLEDrgb_inst,OLEDrgb_BuildRGB(200, 12, 44));
		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 1);
		OLEDrgb_PutString(&pmodOLEDrgb_inst,"Hue:");
		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 3);
		OLEDrgb_PutString(&pmodOLEDrgb_inst,"Sat:");
		OLEDrgb_SetCursor(&pmodOLEDrgb_inst,0,5);
		OLEDrgb_PutString(&pmodOLEDrgb_inst,"Val:");

		while(1)
		{

			// check if the rotary encoder pushbutton or BTNC is pressed
			// exit the loop if either one is pressed.
			if ( pmodENC_is_button_pressed(&pmodENC_inst) )
			{
				break;							//Exit the loop
			}

			if (NX4IO_isPressed(BTNC))
			{
				break;							//Exit the loop
			}

			// check the push buttons and perform the appropriate action

			//If upper pushbutton is pressed, Increment the value by 1
			//Add delay to avoid key debouncing
			if (NX4IO_isPressed(BTNU))
			{

				ValCount++;
				//	xil_printf("\nUpper Button pressed. Value: %d",ValCount);
				usleep(150*1000);
			}
			else if(NX4IO_isPressed(BTND))
			{
				//If down button is pressed, decrement the value
				//Add delay to avoid key debouncing
				ValCount--;
				//	xil_printf("\nDown Button pressed. Value: %d",ValCount);
				usleep(150*1000);
			}
			else if (NX4IO_isPressed(BTNR))
			{
				//If right push button is pressed, increment the saturation value
				//Add delay to avoid key debouncing
				SatCount++;
			//	xil_printf("\nRight Button pressed. Sat: %d", SatCount);
				usleep(150*1000);
			}
			else if (NX4IO_isPressed(BTNL))
			{
				//If left button is pressed, decrement the sat value
				//Add delay to avoid key debouncing
				SatCount--;
			//	xil_printf("\nLeft Button pressed. Sat: %d", SatCount);
				usleep(150*1000);
			}
			else
			{
				// No buttons pressed - no state to change
			}


			sw = NX4IO_getSwitches();

			if((sw & 0x0001))
			{
					detectionMode = 1;
			}
			else
			{
					detectionMode = 0;
			}






			// get the rotary count and update the display with the new count
			pmodENC_read_count(&pmodENC_inst, &HueCount);
			if (HueCount != OldHueCount || SatCount!= OldSatCount || ValCount != OldValueCount)
			{
				// Set up the display output

				// rotary count changed. So update the display
				OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 1);
				OLEDrgb_PutString(&pmodOLEDrgb_inst,"   ");
				OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 1);
				PMDIO_putnum(&pmodOLEDrgb_inst, Hue, 10);
				OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 3);
				OLEDrgb_PutString(&pmodOLEDrgb_inst,"   ");
				OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 3);
				PMDIO_putnum(&pmodOLEDrgb_inst, SatCount, 10);
				OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 5);
				OLEDrgb_PutString(&pmodOLEDrgb_inst,"   ");
				OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 5);
				PMDIO_putnum(&pmodOLEDrgb_inst, ValCount, 10);
				Hue = HueCount;

				RGBColor = hsv_conv_rgb(Hue, SatCount, ValCount);
				xil_printf("\nHueCount: %d, Sat %d Val %d RedD %d GreenD%d BlueD%d",Hue,SatCount,ValCount,RedD,GreenD,BlueD);
				xil_printf("\nRedHigh %d RedLow %d GreenHigh %d GreenLow %d BlueHigh %d BlueLow %d",RedHigh,RedLow,GreenHigh,GreenLow,BlueHigh,BlueLow);
				xil_printf("\nRed_HTemp %d Red_LTemp %d Green_HTemp %d Green_LTemp %d Blue_HTemp %d Blue_LTemp %d",Red_HTemp,Red_LTemp,Green_HTemp,Green_LTemp,Blue_Htemp,Blue_LTemp);
				xil_printf("\nSwitch %d\n\n",detectionMode);
				RGB = OLEDrgb_BuildRGB(RGBColor.r, RGBColor.g, RGBColor.b);
				//Draw Rectangle
				OLEDrgb_DrawRectangle(&pmodOLEDrgb_inst, 60, 10, 80, 30, RGB, true,RGB);


				//For RGB LEDs

			NX4IO_RGBLED_setDutyCycle(RGB1,RGBColor.r, RGBColor.g, RGBColor.b);

			NX4IO_RGBLED_setDutyCycle(RGB2,RGBColor.r, RGBColor.g, RGBColor.b);
			//Calculate Duty cycle of Red, Green, Blue signals
					// Duty Cycle = (On Time)/(On Time + OFF Time)

			if(detectionMode)		//If 1 ,Hardware Detection
			{
				hardware_PWMdetection();
			}
			else					//Else if 0, Software Detection
			{
				software_PWMdetection();
			}


			}

			OldHueCount = HueCount;
			OldSatCount = SatCount;
			OldValueCount = ValCount;


		} // rotary button has been pressed - exit the loop

		xil_printf("\nPmodENC test completed\n");
		//Turn OFF the RGB LEDs and clear the OLED display
		NX4IO_RGBLED_setChnlEn(RGB1,false,false,false);
		NX4IO_RGBLED_setChnlEn(RGB2,false,false,false);
		OLEDrgb_Clear(&pmodOLEDrgb_inst);

		//Blank the Seven Segment display digits and turn the decimal points OFF
		NX410_SSEG_setAllDigits(SSEGLO, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);
		NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);

		return;
}



/**************************** HELPER FUNCTIONS ********************
 * .

 *
 */
void software_PWMdetection(void)
{
				xil_printf("\nIn software detection function");

				RedD = (Red_HTemp * 100)/(Red_HTemp + Red_LTemp);
				GreenD = (Green_HTemp * 100)/(Green_HTemp + Green_LTemp);
				BlueD = (Blue_Htemp * 100)/(Blue_Htemp + Blue_LTemp);

				//Display the Duty cycles on seven segment displays
				NX4IO_SSEG_setDigit(SSEGHI, DIGIT7, (RedD / 10));
				NX4IO_SSEG_setDigit(SSEGHI, DIGIT6, (RedD % 10));

				NX4IO_SSEG_setDigit(SSEGHI, DIGIT4, (GreenD / 10));
				NX4IO_SSEG_setDigit(SSEGLO, DIGIT3, (GreenD % 10));


				NX4IO_SSEG_setDigit(SSEGLO, DIGIT1, (BlueD / 10));
				NX4IO_SSEG_setDigit(SSEGLO, DIGIT0, (BlueD % 10));

				return;
}

void hardware_PWMdetection(void)
{

	xil_printf("\nIn Hardware detection");

	Red_H_High = XGpio_DiscreteRead(&GPIOInst1, GPIO_1_INPUT_0_CHANNEL);
	xil_printf("\nRedHigh %d",Red_H_High);
	Red_H_Low = XGpio_DiscreteRead(&GPIOInst1, GPIO_1_INPUT_1_CHANNEL);
	xil_printf("\nRedLow %d",Red_H_Low);

	Green_H_High = XGpio_DiscreteRead(&GPIOInst2, GPIO_2_INPUT_0_CHANNEL);
	xil_printf("\nGreenHigh %d",Green_H_High);
	Green_H_Low = XGpio_DiscreteRead(&GPIOInst2, GPIO_2_INPUT_1_CHANNEL);
	xil_printf("\nGreenLow %d",Green_H_Low);

	Blue_H_High = XGpio_DiscreteRead(&GPIOInst3, GPIO_3_INPUT_0_CHANNEL);
	xil_printf("\nBlueHigh %d",Blue_H_High);
	Blue_H_Low = XGpio_DiscreteRead(&GPIOInst3, GPIO_3_INPUT_1_CHANNEL);
	xil_printf("\nBlueLow %d",Blue_H_Low);




//	xil_printf("\n RedHigh %d, RedLow %d, GreenH %d, GreenL %d, BlueH %d BlueLow %d",Red_H_High,Red_H_Low,Green_H_High, Green_H_Low, Blue_H_High, Blue_H_Low);

	Red_H_DutyC = (Red_H_High * 100)/(Red_H_High + Red_H_Low);
	Green_H_DutyC = (Green_H_High * 100)/(Green_H_High + Red_H_Low);
	Blue_H_DutyC = (Blue_H_High * 100)/(Blue_H_High + Blue_H_Low);

	xil_printf("\nHardware RedD= %d   GreenD= %d  BlueD= %d",Red_H_DutyC,Green_H_DutyC, Blue_H_DutyC);
	NX4IO_SSEG_setDigit(SSEGHI, DIGIT7, (Red_H_DutyC/ 10));
	NX4IO_SSEG_setDigit(SSEGHI, DIGIT6, (Red_H_DutyC % 10));

	NX4IO_SSEG_setDigit(SSEGHI, DIGIT4, (Green_H_DutyC / 10));
	NX4IO_SSEG_setDigit(SSEGLO, DIGIT3, (Green_H_DutyC % 10));


	NX4IO_SSEG_setDigit(SSEGLO, DIGIT1, (Blue_H_DutyC / 10));
	NX4IO_SSEG_setDigit(SSEGLO, DIGIT0, (Blue_H_DutyC % 10));



	return;
}

/******************************************
 *
 *
 */

rgb hsv_conv_rgb(uint8_t Hue, uint8_t Sat, uint8_t Val)
{
	uint8_t region, remain, p, q, t;
	rgb 	output;
	region = Hue/43;
	remain = (Hue - (region * 43))*6;
	p = (Val * (255-Sat))>>8;
	q = (Val * (255 - ((Sat * remain)>>8)))>>8;
	t = (Val * (255 - ((Sat * (255 - remain))>>8)))>>8;

	switch(region){
	      case 0:
	       output.r = Val;
	       output.g = t;
	       output.b = p;
	       break;
	      case 1:
	      output.r = q;
	      output.g = Val;
	      output.b = p;
	       break;
	      case 2:
	      output.r = p;
	      output.g = Val;
	      output.b = t;
	       break;
	       case 3:
	    output.r = p;
	    output.g = q;
	    output.b = Val;
	       break;
	       case 4:
	    output.r = t;
	    output.g = p;
	    output.b = Val;
	       break;
	       default:
	     output.r = Val;
	     output.g = p;
	     output.b = q;
	       break;
	   }
	return output;
}


/**
* initialize the system
*
* This function is executed once at start-up and after resets.  It initializes
* the peripherals and registers the interrupt handler(s)
*****************************************************************************/


int	do_init(void)
{
	uint32_t status;				// status from Xilinx Lib calls

	// initialize the Nexys4 driver and (some of)the devices
	status = (uint32_t) NX4IO_initialize(NX4IO_BASEADDR);
	if (status != XST_SUCCESS)
	{	xil_printf("\nbaseaddress");
		return XST_FAILURE;
	}

	// set all of the display digits to blanks and turn off
	// the decimal points using the "raw" set functions.
	// These registers are formatted according to the spec
	// and should remain unchanged when written to Nexys4IO...
	// something else to check w/ the debugger when we bring the
	// drivers up for the first time
	NX4IO_SSEG_setSSEG_DATA(SSEGHI, 0x0058E30E);
	NX4IO_SSEG_setSSEG_DATA(SSEGLO, 0x00144116);

	OLEDrgb_begin(&pmodOLEDrgb_inst, RGBDSPLY_GPIO_BASEADDR, RGBDSPLY_SPI_BASEADDR);

	// initialize the pmodENC and hardware
	status = pmodENC_initialize(&pmodENC_inst, PMODENC_BASEADDR);
	if (status != XST_SUCCESS)
	{
		xil_printf("\npmodenc");
		return XST_FAILURE;
	}

	// initialize the GPIO instances
	status = XGpio_Initialize(&GPIOInst0, GPIO_0_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		xil_printf("\ngpio");
		return XST_FAILURE;
	}
	// GPIO0 channel 1 is an 8-bit input port.
	// GPIO0 channel 2 is an 8-bit output port.
	XGpio_SetDataDirection(&GPIOInst0, GPIO_0_INPUT_0_CHANNEL, 0xFF);
	XGpio_SetDataDirection(&GPIOInst0, GPIO_0_OUTPUT_0_CHANNEL, 0x00);

	//Initialize the GPIO 0 Port
	status = XGpio_Initialize(&GPIOInst1, GPIO_0_DEVICE_ID);
		if (status != XST_SUCCESS)
		{
			xil_printf("\ngpio");
			return XST_FAILURE;
		}
		// GPIO0 channel 1 is an 8-bit input port.
		// GPIO0 channel 2 is an 8-bit output port.
		XGpio_SetDataDirection(&GPIOInst0, GPIO_0_INPUT_0_CHANNEL, 0xFF);
		XGpio_SetDataDirection(&GPIOInst0, GPIO_0_OUTPUT_0_CHANNEL, 0x00);
	status = AXI_Timer_initialize();
	if (status != XST_SUCCESS)
	{
		xil_printf("\nAXI Timer");
		return XST_FAILURE;
	}

	// initialize the interrupt controller
	status = XIntc_Initialize(&IntrptCtlrInst, INTC_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		xil_printf("\nIntrController");
	   return XST_FAILURE;
	}

	// connect the fixed interval timer (FIT) handler to the interrupt
	status = XIntc_Connect(&IntrptCtlrInst, FIT_INTERRUPT_ID,
						   (XInterruptHandler)FIT_Handler,
						   (void *)0);
	if (status != XST_SUCCESS)
	{
		xil_printf("\n FIT Timer");
		return XST_FAILURE;

	}

	// start the interrupt controller such that interrupts are enabled for
	// all devices that cause interrupts.
	status = XIntc_Start(&IntrptCtlrInst, XIN_REAL_MODE);
	if (status != XST_SUCCESS)
	{
		xil_printf("\nEnable interrupts");
		return XST_FAILURE;
	}

	// enable the FIT interrupt
	XIntc_Enable(&IntrptCtlrInst, FIT_INTERRUPT_ID);
	return XST_SUCCESS;
}
/*
 * AXI timer initializes it to generate out a 4Khz signal, Which is given to the Nexys4IO module as clock input.
 * DO NOT MODIFY
 */
int AXI_Timer_initialize(void){

	uint32_t status;				// status from Xilinx Lib calls
	u32		ctlsts;		// control/status register or mask

	status = XTmrCtr_Initialize(&AXITimerInst,AXI_TIMER_DEVICE_ID);
		if (status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	status = XTmrCtr_SelfTest(&AXITimerInst, TmrCtrNumber);
		if (status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	ctlsts = XTC_CSR_AUTO_RELOAD_MASK | XTC_CSR_EXT_GENERATE_MASK | XTC_CSR_LOAD_MASK |XTC_CSR_DOWN_COUNT_MASK ;
	XTmrCtr_SetControlStatusReg(AXI_TIMER_BASEADDR, TmrCtrNumber,ctlsts);

	//Set the value that is loaded into the timer counter and cause it to be loaded into the timer counter
	XTmrCtr_SetLoadReg(AXI_TIMER_BASEADDR, TmrCtrNumber, 24998);
	XTmrCtr_LoadTimerCounterReg(AXI_TIMER_BASEADDR, TmrCtrNumber);
	ctlsts = XTmrCtr_GetControlStatusReg(AXI_TIMER_BASEADDR, TmrCtrNumber);
	ctlsts &= (~XTC_CSR_LOAD_MASK);
	XTmrCtr_SetControlStatusReg(AXI_TIMER_BASEADDR, TmrCtrNumber, ctlsts);

	ctlsts = XTmrCtr_GetControlStatusReg(AXI_TIMER_BASEADDR, TmrCtrNumber);
	ctlsts |= XTC_CSR_ENABLE_TMR_MASK;
	XTmrCtr_SetControlStatusReg(AXI_TIMER_BASEADDR, TmrCtrNumber, ctlsts);

	XTmrCtr_Enable(AXI_TIMER_BASEADDR, TmrCtrNumber);
	return XST_SUCCESS;

}

/*********************** DISPLAY-RELATED FUNCTIONS ***********************************/

/****************************************************************************/
/**
* Converts an integer to ASCII characters
*
* algorithm borrowed from ReactOS system libraries
*
* Converts an integer to ASCII in the specified base.  Assumes string[] is
* long enough to hold the result plus the terminating null
*
* @param 	value is the integer to convert
* @param 	*string is a pointer to a buffer large enough to hold the converted number plus
*  			the terminating null
* @param	radix is the base to use in conversion,
*
* @return  *NONE*
*
* @note
* No size check is done on the return string size.  Make sure you leave room
* for the full string plus the terminating null in string
*****************************************************************************/
void PMDIO_itoa(int32_t value, char *string, int32_t radix)
{
	char tmp[33];
	char *tp = tmp;
	int32_t i;
	uint32_t v;
	int32_t  sign;
	char *sp;

	if (radix > 36 || radix <= 1)
	{
		return;
	}

	sign = ((10 == radix) && (value < 0));
	if (sign)
	{
		v = -value;
	}
	else
	{
		v = (uint32_t) value;
	}

  	while (v || tp == tmp)
  	{
		i = v % radix;
		v = v / radix;
		if (i < 10)
		{
			*tp++ = i+'0';
		}
		else
		{
			*tp++ = i + 'a' - 10;
		}
	}
	sp = string;

	if (sign)
		*sp++ = '-';

	while (tp > tmp)
		*sp++ = *--tp;
	*sp = 0;

  	return;
}


/****************************************************************************/
/**
* Write a 32-bit unsigned hex number to PmodOLEDrgb in Hex
*
* Writes  32-bit unsigned number to the pmodOLEDrgb display starting at the current
* cursor position.
*
* @param num is the number to display as a hex value
*
* @return  *NONE*
*
* @note
* No size checking is done to make sure the string will fit into a single line,
* or the entire display, for that matter.  Watch your string sizes.
*****************************************************************************/
void PMDIO_puthex(PmodOLEDrgb* InstancePtr, uint32_t num)
{
  char  buf[9];
  int32_t   cnt;
  char  *ptr;
  int32_t  digit;

  ptr = buf;
  for (cnt = 7; cnt >= 0; cnt--) {
    digit = (num >> (cnt * 4)) & 0xF;

    if (digit <= 9)
	{
      *ptr++ = (char) ('0' + digit);
	}
    else
	{
      *ptr++ = (char) ('a' - 10 + digit);
	}
  }

  *ptr = (char) 0;
  OLEDrgb_PutString(InstancePtr,buf);

  return;
}


/****************************************************************************/
/**
* Write a 32-bit number in Radix "radix" to LCD display
*
* Writes a 32-bit number to the LCD display starting at the current
* cursor position. "radix" is the base to output the number in.
*
* @param num is the number to display
*
* @param radix is the radix to display number in
*
* @return *NONE*
*
* @note
* No size checking is done to make sure the string will fit into a single line,
* or the entire display, for that matter.  Watch your string sizes.
*****************************************************************************/
void PMDIO_putnum(PmodOLEDrgb* InstancePtr, int32_t num, int32_t radix)
{
  char  buf[16];

  PMDIO_itoa(num, buf, radix);
  OLEDrgb_PutString(InstancePtr,buf);

  return;
}


/**************************** INTERRUPT HANDLERS ******************************/

/****************************************************************************/
/**
* Fixed interval timer interrupt handler
*
* Reads the GPIO port which reads back the hardware generated PWM wave for the RGB LEDs
*
* @note
* ECE 544 students - When you implement your software solution for pulse width detection in
* Project 1 this could be a reasonable place to do that processing.
 *****************************************************************************/

void FIT_Handler(void)
{
	// Read the GPIO port to read back the generated PWM signal for RGB led's
	gpio_in = XGpio_DiscreteRead(&GPIOInst0, GPIO_0_INPUT_0_CHANNEL);

//For GPIO[2] i.e pin with red signal
	if(((gpio_in >> 2) & 0x0001) == 1)
	{
					if(R_negedge ==1 && R_posedge == 1)
					{
						Red_LTemp = RedLow;
						Red_HTemp = RedHigh;

						RedLow=1;
						RedHigh =0;
						R_negedge = 0;
						R_posedge = 0;
					}
					else
					{
						R_posedge = 1;
						RedHigh = RedHigh + 1;
					}
	}
	else
	{
				if(R_posedge == 1)
				{
					RedLow = RedLow +1;
					R_negedge = 1;
				}
				else
				{
					R_negedge = 0;
				}
	}


	if(((gpio_in >>1) & 0x0001) == 1)
	{
					if(B_negedge ==1 && B_posedge == 1)
					{
						Blue_LTemp = BlueLow;
						Blue_Htemp = BlueHigh;

						BlueLow=1;
						BlueHigh =0;
						B_negedge = 0;
						B_posedge = 0;
					}
					else
					{
						B_posedge = 1;
						BlueHigh = BlueHigh + 1;
					}
	}
	else
	{
				if(B_posedge == 1)
				{
					BlueLow = BlueLow +1;
					B_negedge = 1;
				}
				else
				{
					B_negedge = 0;
				}
	}

	if(((gpio_in) & 0x0001) == 1)
		{
						if(G_negedge ==1 && G_posedge == 1)
						{
							Green_LTemp = GreenLow;
							Green_HTemp = GreenHigh;

							GreenLow=1;
							GreenHigh =0;
							G_negedge = 0;
							G_posedge = 0;
						}
						else
						{
							G_posedge = 1;
							GreenHigh = GreenHigh + 1;
						}
		}
		else
		{
					if(G_posedge == 1)
					{
						GreenLow = GreenLow +1;
						G_negedge = 1;
					}
					else
					{
						G_negedge = 0;
					}
		}



}
