/**
 *
 * @file ece544ip_test.c
 *
 * @author Tejas Chavan (techavan@pdx.edu)
 * @copyright Portland State University, 2016
 *
 * This file implements a program to execute the color wheel implementation. This implementation is performed by executing
 * pulse width modulation on the RGB Leds present on the Nexys 4 DDR. The PWM is implemented using HSV scale and the converting
 * it to RGB scale.
 *
 * The test is basic but covers all of the API functions:
 *	o initialize the Nexys4IO, Pmod drivers and all the other peripherals.
 *	o Check that the duty cycles can be set for both RGB LEDs
 *	o Write character codes to the digits of the seven segment display banks
 *	o Check that all of the switches and pushbuttons on the Nexys4 can be read
 *	o Performs a basic test on the rotary encoder and pmodOLEDrgb
 *
 * <pre>
 * MODIFICATION HISTORY:
 *
 * Ver   Who  Date     Changes
 * ----- ---- -------- -----------------------------------------------
 * 1.00a	rhk	02-Jul-2016		First release of test program.  Builds on the ece544 peripheral test used
 *							to check the functionality of Nexys4IO adn PMod544IOR2
 * 2.00a sy  14-Oct-2016		Modified the code to include different initialize function for other peripherals
 *							connected to the system.
 * 2.01a rk	10-Jan-2018		MB_Sleep() has been deprecated.  Replaced w/ usleep(msecs * 1000)
 * </pre>
 *
 * @note
 * The minimal hardware configuration for this test is a Microblaze-based system with at least 32KB of memory,
 * an instance of Nexys4IO, an instance of the pmodOLEDrgb AXI slave peripheral, and instance of the pmodENC AXI
 * slave peripheral, an instance of AXI GPIO, an instance of AXI timer and an instance of the AXI UARTLite
 * (used for xil_printf() console output)
 *
 * @note
 * The driver code and test application(s) for the pmodOLDrgb are based on code provided by Digilent, Inc.
 ******************************************************************************/

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

#define GPIO_1_DEVICE_ID			XPAR_AXI_GPIO_1_DEVICE_ID
#define GPIO_1_INPUT_0_CHANNEL		1
#define GPIO_1_INPUT_1_CHANNEL		2

#define GPIO_2_DEVICE_ID			XPAR_AXI_GPIO_2_DEVICE_ID
#define GPIO_2_INPUT_0_CHANNEL		1
#define GPIO_2_INPUT_1_CHANNEL		2

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
XGpio		GPIOInst0;					// GPIO instance
XGpio		GPIOInst1;
XGpio		GPIOInst2;
XGpio		GPIOInst3;
XIntc 		IntrptCtlrInst;				// Interrupt Controller instance
XTmrCtr		AXITimerInst;				// PWM timer instance
uint16_t 	switch_status;
typedef struct{
	uint16_t h;
	uint8_t s;
	uint8_t v;
	}hsv;                              // Structure that holds the hsv value;

typedef struct{
	uint8_t r;
	uint8_t g;
	uint8_t b;
}rgb;								  // Structure that holds the rgb value that has to be sent to the RGB leds to work

	int count=0;
	int disp=0;
// The following variables are shared between non-interrupt processing and
// interrupt processing such that they must be global(and declared volatile)
// These variables are controlled by the FIT timer interrupt handler

	u16  					RotaryCnt;

	u8						Hue = 0;
	u8						Sat = 0;
	u8						Val = 0;

	u8						Hue_Old = 0;
	u8						Sat_Old = 0;
	u8						Val_Old = 0;

	u8						Sat_Count = 0;
	u8						Val_Count = 0;

	u8						Red = 0;
	u8						Green = 0;
	u8						Blue = 0;

	u8						Red_Old = 0;
	u8						Green_Old = 0;
	u8						Blue_Old = 0;

	u16						RGB = 0;
	u16						RGB_old = 0;
	u16						red_duty_cycle = 0;
	u16						green_duty_cycle = 0;
	u16						blue_duty_cycle = 0;
	// Value of high low count from software

	volatile u32			high_value_sw_red=0;	// Value of high count from software
	volatile u32  			low_value_sw_red=0;		// Value of low count from software
	volatile u32			high_value_sw_blue=0;	// Value of high count from software
	volatile u32  			low_value_sw_blue=0;	// Value of low count from software
	volatile u32			high_value_sw_green=0;	// Value of high count from software
	volatile u32  			low_value_sw_green=0;	// Value of low count from software

	volatile u32 			count_high_red=0;		// Initializing the count_high value to 0
	volatile u32			count_low_red=0;		// Initializing the count_low value to 0
	volatile u32			old_pwm_red=0;			// Store the old pwm value to enable detection of rising or falling edge
	volatile u32 			count_high_blue=0;		// Initializing the count_high value to 0
	volatile u32			count_low_blue=0;		// Initializing the count_low value to 0
	volatile u32			old_pwm_blue=0;			// Store the old pwm value to enable detection of rising or falling edge
	volatile u32 			count_high_green=0;		// Initializing the count_high value to 0
	volatile u32			count_low_green=0;		// Initializing the count_low value to 0
	volatile u32			old_pwm_green=0;		// Store the old pwm value to enable detection of rising or falling edge

	volatile u32			pwm_red=0;				// Store the current red pwm value
	volatile u32			pwm_blue=0;				// Store the current blue pwm value
	volatile u32			pwm_green=0;			// Store the current green pwm value

	volatile u32			gpio1_in1;				// GPIO1 ch1 input port
	volatile u32			gpio1_in2;				// GPIO1 ch2 input port
	volatile u32			gpio2_in1;				// GPIO2 ch1 input port
	volatile u32			gpio2_in2;				// GPIO2 ch2 input port
	volatile u32			gpio3_in1;				// GPIO3 ch1 input port
	volatile u32			gpio3_in2;				// GPIO3 ch2 input port



volatile u32			gpio_in;			// GPIO input port
/************************** Function Prototypes *****************************/
void PMDIO_itoa(int32_t value, char *string, int32_t radix);
void PMDIO_puthex(PmodOLEDrgb* InstancePtr, uint32_t num);
void PMDIO_putnum(PmodOLEDrgb* InstancePtr, int32_t num, int32_t radix);
rgb hsv_conv_rgb(uint8_t Hue, uint8_t Sat, uint8_t Val);
int	 do_init(void);											// initialize system
void FIT_Handler(void);										// fixed interval timer interrupt handler
int AXI_Timer_initialize(void);

void pwm_sw(void);
void pwm_hw(void);
void RunTest4(void);


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

	// start the PWM timer and kick of the processing by enabling the Microblaze interrupt
	//PWM_SetParams(&PWMTimerInst, pwm_freq, pwm_duty);
	//PWM_Start(&PWMTimerInst);
	microblaze_enable_interrupts();

	pmodENC_init(&pmodENC_inst, 5, true);
	pmodENC_clear_count(&pmodENC_inst);
	OLEDrgb_Clear(&pmodOLEDrgb_inst);
	OLEDrgb_SetFontColor(&pmodOLEDrgb_inst ,OLEDrgb_BuildRGB(0, 0, 255));  // blue font

	xil_printf("ECE 544 Colorwheel implementation\n\r");
	xil_printf("By Tejas Chavan. 25-Jan-2018\n\n\r");

	display_HSV_RGB();

	timestamp = 0;

	// blank the display digits and turn off the decimal points
	NX410_SSEG_setAllDigits(SSEGLO, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);
	NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);
	// TEST 4 - test the rotary encoder (PmodENC) and display (PmodOLEDrgb)
	RunTest4();

	NX4IO_RGBLED_setChnlEn(RGB1, true, true, true);
	NX4IO_RGBLED_setDutyCycle(RGB1, 0, 0, 0);
	NX4IO_RGBLED_setChnlEn(RGB2, true, true, true);
	NX4IO_RGBLED_setDutyCycle(RGB2, 0, 0, 0);


	timestamp = 0;

	xil_printf("Starting Test 5...the buttons and switch test\n");
	xil_printf("Press the center pushbutton to exit\n");

	// blank the display digits and turn off the decimal points
	NX410_SSEG_setAllDigits(SSEGLO, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);
	NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);
	// loop the test until the user presses the center button

	// announce that we're done
	xil_printf("\nThat's All Folks!\n\n");

	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 2);
	OLEDrgb_SetFontColor(&pmodOLEDrgb_inst ,OLEDrgb_BuildRGB(0, 0, 255));  // blue font
	OLEDrgb_PutString(&pmodOLEDrgb_inst,"BYE BYE");

	usleep(5000 * 1000);

	// clear the displays and power down the pmodOLEDrbg
	NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_B, CC_LCY, CC_E, DP_NONE);
	NX410_SSEG_setAllDigits(SSEGLO, CC_B, CC_LCY, CC_E, CC_BLANK, DP_NONE);
	OLEDrgb_Clear(&pmodOLEDrgb_inst);
	OLEDrgb_end(&pmodOLEDrgb_inst);

	// cleanup and exit
	cleanup_platform();
	exit(0);
}

/************************ TEST FUNCTIONS ************************************/
/****************************************************************************/
/**
 * Test 4 - Test the PmodENC and PmodCLP
 *
 * Performs some basic tests on the PmodENC and PmodOLEDrgb.  Includes the following tests
 * 	1.	check the rotary encoder by displaying the rotary encoder
 * 		count in decimal and hex on the LCD display.  Rotate the knob
 * 		to change the values up or down.  The pushbuttons can be used
 * 		as follows:
 * 			o 	press the rotary encoder pushbutton to exit
 * 			o 	press BtnUp to clear the count
 * 			o 	press BtnR to change rotary encoder
 * 				mode to "stop at zero".
 * 			o 	press BTNL to change the increment/decrement
 * 				value.  Use sw[3:0] to set the new value
 *	6.	display the string "357#&CFsw" on the LCD display.  These values
 * 		were chosen to check that the bit order is correct.  The screen will
 * 		clear in about 5 seconds.
 * 	7.	display "Looks Good" on the LCD.  The screen will clear
 * 		in about 5 seconds.
 *
 *
 * @param	*NONE*
 *
 * @return	*NONE*
 *
 *****************************************************************************/

void RunTest4(void)
{


    xil_printf("Starting Test 4...The PmodOLEDrgb and PmodENC Test\n");
	xil_printf("Turn PmodENC shaft.  Rotary Encoder count is displayed\n");
	xil_printf("BTNU -Increase value, BNTR -Increase saturation, BTNL - Decrease saturation, BTND - Decrease value\n");
	xil_printf("Press Rotary encoder shaft or BTNC to exit\n");

	// test the rotary encoder functions


	while(1) {
	pmodENC_read_count(&pmodENC_inst, &RotaryCnt);
	if(RotaryCnt > 359)
		{
	pmodENC_clear_count(&pmodENC_inst);
		}
	else if(RotaryCnt < 0)
		{
			RotaryCnt = 355;
		}
		Hue = RotaryCnt*255/359;

		// Calculation of Saturation
			// The value is between 0-99
			// As the conversion needs values 0-255 it is mapped to 255
			if(NX4IO_isPressed(BTNR) && (Sat_Count <= 99))
				Sat_Count++;
			else if(NX4IO_isPressed(BTNR)&& (Sat_Count > 99))
				Sat_Count = 0;
			else if(NX4IO_isPressed(BTNL) && (Sat_Count>0))
				Sat_Count--;
			else if(NX4IO_isPressed(BTNL) && (Sat_Count == 0))
					Sat_Count = 99;
			else
				Sat_Count = Sat_Count;
			Sat = Sat_Count*255/99;

			// Calculation of Value
			// The value calculated is between 0-99
			// As the conversion needs values 0-255 it is mapped to 255
			if(NX4IO_isPressed(BTNU) && (Val_Count <= 99))
				Val_Count++;
			else if(NX4IO_isPressed(BTNU)&& Val_Count > 99)
				Val_Count = 0;
			else if(NX4IO_isPressed(BTND) && (Val_Count>0))
				Val_Count--;
			else if(NX4IO_isPressed(BTND) && (Val_Count == 0))
				Val_Count = 99;
			else
				Val_Count = Val_Count;

			Val = Val_Count * 255/99;



			if (( pmodENC_is_button_pressed(&pmodENC_inst)) || NX4IO_isPressed(BTNC) )
				{break;}

		if ((Hue != Hue_Old) | (Sat_Count != Sat_Old) | (Val_Count != Val_Old))

		{

			xil_printf("Hue : %d,Sat : %d, Value : %d \n",Hue,Sat_Count,Val_Count);
		xil_printf("Hue OLD : %d,Sat OLD : %d, Value OLD: %d \n",Hue_Old,Sat_Old,Val_Old);
			//rgb final_rgb = hsv_conv_rgb(Hue, Sat, Val);
			RGB = OLEDrgb_BuildHSV(Hue,Sat,Val);
			//xil_printf("RGB : %d", RGB);
			NX4IO_RGBLED_setChnlEn(RGB1, true, true, true);
			NX4IO_RGBLED_setChnlEn(RGB2, true, true, true);
			NX4IO_RGBLED_setDutyCycle(RGB1, OLEDrgb_ExtractRFromRGB(RGB)<<3, OLEDrgb_ExtractGFromRGB(RGB)<<2, OLEDrgb_ExtractBFromRGB(RGB)<<3);
			NX4IO_RGBLED_setDutyCycle(RGB2, OLEDrgb_ExtractRFromRGB(RGB)<<3, OLEDrgb_ExtractGFromRGB(RGB)<<2, OLEDrgb_ExtractBFromRGB(RGB)<<3);

			//gpio_in = XGpio_DiscreteRead(&GPIOInst0, GPIO_0_INPUT_0_CHANNEL);
			//xil_printf("GPIO_in: %d\n",gpio_in );
			// pwm_red   = (gpio_in & 0x0004)>>2;
			//	 pwm_blue  = (gpio_in & 0x0002)>>1;
			//	 pwm_green = (gpio_in & 0x0001);
				 //xil_printf("pwm_red: %d, pwm_green : %d, pwm_blue: %d\n",pwm_red, pwm_green, pwm_blue);
				 usleep(5000);

				//pwm_sw();
				pwm_hw();

			DisplayOLED();



		}
	} // rotary button has been pressed - exit the loop

	// Write some character to the screen to check the ASCII translation
	OLEDrgb_Clear(&pmodOLEDrgb_inst);
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 7);
	OLEDrgb_PutChar(&pmodOLEDrgb_inst, '3');
	OLEDrgb_PutChar(&pmodOLEDrgb_inst, '5');
	OLEDrgb_PutChar(&pmodOLEDrgb_inst, '7');
	OLEDrgb_PutChar(&pmodOLEDrgb_inst, '#');
	OLEDrgb_PutChar(&pmodOLEDrgb_inst, '&');
	OLEDrgb_PutChar(&pmodOLEDrgb_inst, 'C');
	OLEDrgb_PutChar(&pmodOLEDrgb_inst, 'F');
	OLEDrgb_PutChar(&pmodOLEDrgb_inst, 's');
	OLEDrgb_PutChar(&pmodOLEDrgb_inst, 'w');
	xil_printf("GPIO : %d\n", gpio_in);
	//usleep(5000 * 1000);

	// Write one final string
	OLEDrgb_Clear(&pmodOLEDrgb_inst);
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 4);
	//OLEDrgb_PutString(&pmodOLEDrgb_inst, s);
//exit(0)
	//return;
}




/**************************** HELPER FUNCTIONS ******************************/

/****************************************************************************/
/**
 * initialize the system
 *
 * This function is executed once at start-up and after resets.  It initializes
 * the peripherals and registers the interrupt handler(s)
 *****************************************************************************/

int	 do_init(void)
{
	uint32_t status;				// status from Xilinx Lib calls

	// initialize the Nexys4 driver and (some of)the devices
	status = (uint32_t) NX4IO_initialize(NX4IO_BASEADDR);
	if (status != XST_SUCCESS)
	{
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
		return XST_FAILURE;
	}

	// initialize the GPIO instances
	status = XGpio_Initialize(&GPIOInst0, GPIO_0_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	status = XGpio_Initialize(&GPIOInst1, GPIO_1_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	status = XGpio_Initialize(&GPIOInst2, GPIO_2_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	status = XGpio_Initialize(&GPIOInst3, GPIO_3_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	// GPIO0 channel 1 is an 8-bit input port.
	// GPIO0 channel 2 is an 8-bit output port.
	XGpio_SetDataDirection(&GPIOInst0, GPIO_0_INPUT_0_CHANNEL, 0xFF);
	XGpio_SetDataDirection(&GPIOInst0, GPIO_0_OUTPUT_0_CHANNEL, 0x00);

	XGpio_SetDataDirection(&GPIOInst1, GPIO_1_INPUT_0_CHANNEL, 0xFF);
	XGpio_SetDataDirection(&GPIOInst1, GPIO_1_INPUT_1_CHANNEL, 0xFF);

	XGpio_SetDataDirection(&GPIOInst2, GPIO_2_INPUT_0_CHANNEL, 0xFF);
	XGpio_SetDataDirection(&GPIOInst2, GPIO_2_INPUT_1_CHANNEL, 0xFF);

	XGpio_SetDataDirection(&GPIOInst3, GPIO_3_INPUT_0_CHANNEL, 0xFF);
	XGpio_SetDataDirection(&GPIOInst3, GPIO_3_INPUT_1_CHANNEL, 0xFF);


	status = AXI_Timer_initialize();
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	// initialize the interrupt controller
	status = XIntc_Initialize(&IntrptCtlrInst, INTC_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	// connect the fixed interval timer (FIT) handler to the interrupt
	status = XIntc_Connect(&IntrptCtlrInst, FIT_INTERRUPT_ID,
			(XInterruptHandler)FIT_Handler,
			(void *)0);
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;

	}

	// start the interrupt controller such that interrupts are enabled for
	// all devices that cause interrupts.
	status = XIntc_Start(&IntrptCtlrInst, XIN_REAL_MODE);
	if (status != XST_SUCCESS)
	{
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
 * Reads the GPIO port which reads back the hardware generated PWM wave for the RGB Leds
 *
 * @note
 * ECE 544 students - When you implement your software solution for pulse width detection in
 * Project 1 this could be a reasonable place to do that processing.
 *****************************************************************************/

void FIT_Handler(void)
{
	// Read the GPIO port to read back the generated PWM signal for RGB led's
	 gpio_in = XGpio_DiscreteRead(&GPIOInst0, GPIO_0_INPUT_0_CHANNEL);

	 pwm_red   = (gpio_in & 0x0004)>>2;
	 pwm_blue  = (gpio_in & 0x0002)>>1;
	 pwm_green = (gpio_in & 0x0001);

	 // Detect Red

	 	 if (pwm_red == 1 && old_pwm_red==0)
	 	 {
	 		low_value_sw_red = count_low_red;
	 		count_low_red    = 0;
	 	 }
	 	else if(pwm_red == 0 && old_pwm_red == 1)
	 	{
	 		high_value_sw_red = count_high_red;
	 		count_high_red = 0;
	 	}

	 	if (pwm_red)
	 		count_high_red++;
	 	else
	 	{
	 		count_low_red++;
	 		if(count_low_red > 8000)
	 		{
	 			high_value_sw_red = 0;
	 		}
	 	}
	 	old_pwm_red = pwm_red;

	 	if(pwm_green == 1 && old_pwm_green == 0)
	 	{
	 		low_value_sw_green = count_low_green;
	 		count_low_green=0;
	 	}
	 	else if(pwm_green == 0 && old_pwm_green==1)
	 	{
	 		high_value_sw_green = count_high_green;
	 		count_high_green = 0;
	 		}

	 	if(pwm_green)
	 		count_high_green++;
	 	else
	 	{
	 		count_low_green++;
	 			if(count_low_green > 8000)
	 			{
	 				high_value_sw_green = 0;
	 			}
	 	}
	 		old_pwm_green = pwm_green;

	 	if(pwm_blue == 1 && old_pwm_blue == 0)
	 	{
	 		low_value_sw_blue = count_low_blue;
	 		count_low_blue = 0;
	 	}
	 		else if(pwm_blue == 0 && old_pwm_blue == 1)
	 		{
	 			high_value_sw_blue = count_high_blue;
	 			count_high_blue = 0;
	 		}

	 	if(pwm_blue)
	 		count_high_blue++;
	 	else
	 		{
	 			count_low_blue++;
	 		if(count_low_blue > 8000)
	 			{
	 				high_value_sw_blue = 0;
	 			}
	 		}

	 	old_pwm_blue=pwm_blue;

}




/*
void FIT_Handler(void)
{
	// Read the GPIO port to read back the generated PWM signal for RGB led's
	gpio_in = XGpio_DiscreteRead(&GPIOInst0, GPIO_0_INPUT_0_CHANNEL);
	//The software module for the calculation of Duty cycle

	pwm_blue = gpio_in & 0x02;
	pwm_green = gpio_in & 0x04;
	pwm_red = gpio_in & 0x01;

	if ((old_pwm_red==0) && (pwm_red==1))	// Checking for the transition from low to high state
	{
		low_value_sw_red=count_low_red;		// Updating the value of the low count generated from the software
		high_value_sw_red=count_high_red;	// Updating the value of the high count generated from the software
		count_high_red=1;				// Reinitialize the count values
		count_low_red=0;
	}

	else if ((old_pwm_red==1) && (pwm_red==1))
	{
		count_high_red ++;				// Incrementing high count if pwm is high
	}
	else if ((old_pwm_red==0) && (pwm_red == 0))
	{
		count_low_red ++;				// Incrementing low count if pwm is low
	}

	old_pwm_red = pwm_red;



	if ((old_pwm_blue==0) && (pwm_blue==2))	// Checking for the transition from low to high state
	{
		low_value_sw_blue=count_low_blue;		// Updating the value of the low count generated from the software
		high_value_sw_blue=count_high_blue;	// Updating the value of the high count generated from the software
		count_high_blue=1;				// Reinitialize the count values
		count_low_blue=0;
	}

	else if ((old_pwm_blue==2) && (pwm_blue==2))
	{
		count_high_blue ++;				// Incrementing high count if pwm is high
	}
	else if ((old_pwm_blue==0) && (pwm_blue == 0))
	{
		count_low_blue ++;				// Incrementing low count if pwm is low
	}

	old_pwm_blue = pwm_blue;



	if ((old_pwm_green==0) && (pwm_green==4))	// Checking for the transition from low to high state
	{
		low_value_sw_green=count_low_green;		// Updating the value of the low count generated from the software
		high_value_sw_green=count_high_green;	// Updating the value of the high count generated from the software
		count_high_green=1;				// Reinitialize the count values
		count_low_green=0;
	}

	else if ((old_pwm_green==4) && (pwm_green==4))
	{
		count_high_green ++;				// Incrementing high count if pwm is high
	}
	else if ((old_pwm_green==0) && (pwm_green == 0))
	{
		count_low_green ++;				// Incrementing low count if pwm is low
	}

	old_pwm_green = pwm_green;

}
*/
/****************************************************************************/
/**
 Calculates the Duty Cycle of the RGB Leds via Hardware PWM detection
 *****************************************************************************/
void pwm_sw(void)
{
	//u8 my_interrupt = XIntc_Start(&IntrptCtlrInst, XIN_REAL_MODE);
	usleep(1000);
	//uint8_t duty_cycle_red= temp_high_red*100/(temp_low_red + temp_high_red );

	//xil_printf("RED HIGH :%d,RED LOW :%d\n",high_value_sw_red,low_value_sw_red);



	red_duty_cycle = ((high_value_sw_red)*100)/(high_value_sw_red + low_value_sw_red);
	green_duty_cycle = ((high_value_sw_green)*100)/(high_value_sw_green + low_value_sw_green);
	blue_duty_cycle = ((high_value_sw_blue)*100)/(high_value_sw_blue + low_value_sw_blue);

	xil_printf("red_duty_cycle: %d, green_duty_cycle: %d, blue_duty_cycle: %d", red_duty_cycle, green_duty_cycle, blue_duty_cycle );
	//xil_printf("RED Duty Cycle :%d\n",red_duty_cycle);


			usleep(5000);
			//u32 Data_SSEG;
			//Data_SSEG = red_duty_cycle;
			//Data_SSEG = Data_SSEG <<12;
			///Data_SSEG = Data_SSEG + green_duty_cycle;
			//Data_SSEG = Data_SSEG <<12;
			//Data_SSEG = Data_SSEG + blue_duty_cycle ;
			//NX4IO_SSEG_putU32Hex(Data_SSEG);

	//xil_printf("ON time red: %d\n", (sw_high_red*0.000025));

	//if (disp == 1)
//	{

	//xil_printf("\nDuty cycles for red green blue are %d,%d,%d",duty_cycle_red,duty_cycle_green,duty_cycle_blue);
	SevenSegDisp(red_duty_cycle,green_duty_cycle,blue_duty_cycle);
	//NX4IO_RGBLED_setChnlEn(RGB2, true, true, true);
	//NX4IO_RGBLED_setDutyCycle(RGB2, OLEDrgb_ExtractRFromRGB(RGB),OLEDrgb_ExtractGFromRGB(RGB),OLEDrgb_ExtractBFromRGB(RGB));
					//}
}

/****************************************************************************

Seven segment display function
Displays RR GG BB on the 8 segments

*****************************************************************************/
void SevenSegDisp(uint8_t red,uint8_t green, uint8_t blue)
{

	// clear all the decimal points
	NX4IO_SSEG_setDecPt(SSEGLO, DIGIT7, false);
	NX4IO_SSEG_setDecPt(SSEGLO, DIGIT6, false);
	NX4IO_SSEG_setDecPt(SSEGLO, DIGIT5, false);
	NX4IO_SSEG_setDecPt(SSEGLO, DIGIT4, false);
	NX4IO_SSEG_setDecPt(SSEGHI, DIGIT3, false);
	NX4IO_SSEG_setDecPt(SSEGHI, DIGIT2, false);
	NX4IO_SSEG_setDecPt(SSEGHI, DIGIT1, false);
	NX4IO_SSEG_setDecPt(SSEGHI, DIGIT0, false);

	NX4IO_SSEG_setDigit(SSEGHI, DIGIT7, (red/10));
    NX4IO_SSEG_setDigit(SSEGHI, DIGIT6, (red%10));

	NX4IO_SSEG_setDigit(SSEGHI, DIGIT4, (green/10));
	NX4IO_SSEG_setDigit(SSEGLO, DIGIT3, (green%10));

	NX4IO_SSEG_setDigit(SSEGLO, DIGIT1, (blue/10));
    NX4IO_SSEG_setDigit(SSEGLO, DIGIT0, (blue%10));

    NX4IO_SSEG_setDigit(SSEGHI, DIGIT5, CC_BLANK);
    NX4IO_SSEG_setDigit(SSEGLO, DIGIT2, CC_BLANK);



}

void pwm_hw(void)
{

	gpio1_in1 = XGpio_DiscreteRead(&GPIOInst1, GPIO_1_INPUT_0_CHANNEL);
	gpio1_in2 = XGpio_DiscreteRead(&GPIOInst1, GPIO_1_INPUT_1_CHANNEL);

	gpio2_in1 = XGpio_DiscreteRead(&GPIOInst2, GPIO_2_INPUT_0_CHANNEL);
	gpio2_in2 = XGpio_DiscreteRead(&GPIOInst2, GPIO_2_INPUT_1_CHANNEL);

	gpio3_in1 = XGpio_DiscreteRead(&GPIOInst3, GPIO_3_INPUT_0_CHANNEL);
	gpio3_in2 = XGpio_DiscreteRead(&GPIOInst3, GPIO_3_INPUT_1_CHANNEL);
	xil_printf("gpio1_in1 : %d, gpio1_in2 : %d\n", gpio1_in1, gpio1_in2);
	xil_printf("gpio2_in1 : %d, gpio2_in2 : %d\n", gpio2_in1, gpio2_in2);
	xil_printf("gpio3_in1 : %d, gpio3_in2 : %d\n", gpio3_in1, gpio3_in2);


	uint8_t duty_cycle_red = gpio1_in1*100/(gpio1_in1 + gpio1_in2 );
	uint8_t duty_cycle_blue= gpio2_in1*100/(gpio2_in1 + gpio2_in2 );
	uint8_t duty_cycle_green= gpio3_in1*100/(gpio3_in1 + gpio3_in2 );

	//xil_printf("ON time red: %d\n", (sw_high_red*0.000025));

	//if (disp == 1)
	//{

	//xil_printf("\nDuty cycles for red green blue are %d,%d,%d",duty_cycle_red,duty_cycle_green,duty_cycle_blue);
	SevenSegDisp(duty_cycle_red,duty_cycle_green,duty_cycle_blue);

	//}
}

void display_HSV_RGB(void)
{
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 1, 1);
	OLEDrgb_PutString(&pmodOLEDrgb_inst,"H ");
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 1);
	PMDIO_putnum(&pmodOLEDrgb_inst, RotaryCnt, 10);

	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 1, 2);
	OLEDrgb_PutString(&pmodOLEDrgb_inst,"S ");
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 2);
	PMDIO_putnum(&pmodOLEDrgb_inst, Sat_Count, 10);

	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 1, 3);
	OLEDrgb_PutString(&pmodOLEDrgb_inst,"V ");
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 3);
	PMDIO_putnum(&pmodOLEDrgb_inst, Val_Count, 10);



	OLEDrgb_DrawRectangle(&pmodOLEDrgb_inst, 70, 70, 95, 95, RGB, true, RGB);

}

// if there is no change in the values of hue, sat, val, red, green, blue are
// same from the previous time this function was called then there is no change
// in the oled display. The function only updates the values that have
// been changed
void DisplayOLED(void)
{

		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 1);
		OLEDrgb_PutString(&pmodOLEDrgb_inst, "   ");
		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 1);
		PMDIO_putnum(&pmodOLEDrgb_inst, RotaryCnt, 10);
		Hue_Old = Hue;

		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 2);
		OLEDrgb_PutString(&pmodOLEDrgb_inst, "   ");
		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 2);
		PMDIO_putnum(&pmodOLEDrgb_inst, Sat_Count, 10);
		Sat_Old = Sat_Count;

		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 3);
		OLEDrgb_PutString(&pmodOLEDrgb_inst, "   ");
		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 3);
		PMDIO_putnum(&pmodOLEDrgb_inst, Val_Count, 10);
		Val_Old = Val_Count;

		OLEDrgb_DrawRectangle(&pmodOLEDrgb_inst, 70, 70, 95, 95, RGB, true, RGB);
		RGB_old = RGB;

		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 5);
		OLEDrgb_PutString(&pmodOLEDrgb_inst, "   ");
		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 5);
		PMDIO_putnum(&pmodOLEDrgb_inst, Red, 10);
		Red_Old = Red;

		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 6);
		OLEDrgb_PutString(&pmodOLEDrgb_inst, "   ");
		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 6);
		PMDIO_putnum(&pmodOLEDrgb_inst, Green, 10);
		Green_Old = Green;


		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 7);
		OLEDrgb_PutString(&pmodOLEDrgb_inst, "   ");
		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 7);
		PMDIO_putnum(&pmodOLEDrgb_inst, Blue, 10);
		Blue_Old = Blue;

	usleep(10000);
}




