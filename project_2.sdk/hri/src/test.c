/*
 * test.c
 *
 *  Created on: 27-Jan-2018
 *      Author: HIMAN
 */

/**
*
* @file ece544ip_test.c
*
* @author Roy Kravitz (roy.kravitz@pdx.edu)
* @author Srivatsa Yogendra (srivatsa@pdx.edu)
* @copyright Portland State University, 2016
*
* This file implements a test program for the Nexys4IO and custom Pmod peripherals
* used in ECE 544. The peripherals provides access to the Nexys4 pushbuttons
* and slide switches, the LEDs, the RGB LEDs, and the Seven Segment display
* on the Digilent Nexys4 board and the PmodOLEDrgb (94 x 64 RGB graphics display)
* and the PmodENC (rotary encoder + slide swich + pushbutton).
*
* The test is basic but covers all of the API functions:
*	o initialize the Nexys4IO, Pmod drivers and all the other peripherals
*	o Set the LED's to different values
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

typedef struct {
	uint8_t red;
	uint8_t green;
	uint8_t blue;
} rgb;

/**************************** Type Definitions ******************************/

/***************** Macros (Inline Functions) Definitions ********************/

/************************** Variable Definitions ****************************/
// Microblaze peripheral instances
uint64_t 	timestamp = 0L;
PmodOLEDrgb	pmodOLEDrgb_inst;
PmodENC 	pmodENC_inst;
XGpio		GPIOInst0, GPIOInst1, GPIOInst2, GPIOInst3;					// GPIO instance
XIntc 		IntrptCtlrInst;												// Interrupt Controller instance
XTmrCtr		AXITimerInst;												// PWM timer instance


// The following variables are shared between non-interrupt processing and
// interrupt processing such that they must be global(and declared volatile)
// These variables are controlled by the FIT timer interrupt handler

volatile int x = 0, y = 0;
volatile u32			gpio_in;		// GPIO input port
volatile u32			gpio1_in1 , gpio1_in2 , gpio2_in1 , gpio2_in2  , gpio3_in1  , gpio3_in2 ;
volatile u8 r, g, b;
volatile u32 r_pcnt = 0, g_pcnt = 0, b_pcnt = 0, r_ncnt = 0, g_ncnt = 0, b_ncnt = 0;
volatile u32 r_width = 0, g_width = 0, b_width = 0;

volatile u32 r_pcnt_temp = 0, g_pcnt_temp = 0, b_pcnt_temp = 0, r_ncnt_temp = 0, g_ncnt_temp = 0, b_ncnt_temp = 0;
volatile u32 r_pflag = 0, r_nflag = 0, g_pflag = 0, g_nflag = 0, b_pflag = 0, b_nflag = 0;

volatile u8 ssg_disp[6];
//volatile u8 old_ssg_disp[6];
volatile int check;

/************************** Function Prototypes *****************************/
void PMDIO_itoa(int32_t value, char *string, int32_t radix);
void PMDIO_puthex(PmodOLEDrgb* InstancePtr, uint32_t num);
void PMDIO_putnum(PmodOLEDrgb* InstancePtr, int32_t num, int32_t radix);
int	 do_init(void);											// initialize system
void FIT_Handler(void);										// fixed interval timer interrupt handler
int AXI_Timer_initialize(void);

void Test(void);
void Soft(void);
void Hard(void);
void ssg_display(u32 r, u32 g, u32 b);
void stop(void);
rgb hsv_conv_rgb(uint8_t Hue, uint8_t Sat, uint8_t Val);

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

	xil_printf("ECE 544 Colorwheel implementation\n\r");
	xil_printf("By Srivatsa Yogendra. 22-Aug-2016\n\n\r");

	Test();


}


void Test(void)
{

	xil_printf("In test fn");
	uint16_t sw;
	uint16_t RotaryCnt, OldRotaryCnt = 0;
	uint16_t RotaryIncr;
	bool RotaryNoNeg;
	uint8_t hue;
	uint8_t const_val = 255;
	uint8_t old_const_val = 0;
	uint8_t const_sat = 255;
	uint8_t old_const_sat = 0;
	uint16_t rgb_color;
	uint8_t r_color;
	uint8_t g_color;
	uint8_t b_color;



	// test the rotary encoder functions
	RotaryIncr = 1;
	RotaryNoNeg = false;
	pmodENC_init(&pmodENC_inst, RotaryIncr, RotaryNoNeg);
	pmodENC_clear_count(&pmodENC_inst);
	OldRotaryCnt = 0xFFFF;

	// Set up the display output
	OLEDrgb_Clear(&pmodOLEDrgb_inst);
	OLEDrgb_SetFontColor(&pmodOLEDrgb_inst,OLEDrgb_BuildRGB(200, 12, 44));
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 1);
	OLEDrgb_PutString(&pmodOLEDrgb_inst,"Hue:");
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 3);
	OLEDrgb_PutString(&pmodOLEDrgb_inst,"Sat:");
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 5);
	OLEDrgb_PutString(&pmodOLEDrgb_inst,"Val:");


	while(1) {
		// check if the rotary encoder pushbutton or BTNC is pressed
		// exit the loop if either one is pressed.
		if ( pmodENC_is_button_pressed(&pmodENC_inst) )
		{
			stop();
			break;
		}

		if (NX4IO_isPressed(BTNC))
		{
			stop();
			break;
		}

		// check the buttons and perform the appropriate action
		if (NX4IO_isPressed(BTNU))
		{
			const_val++;
			xil_printf("\n Up button is pressed. Val Count= %d",const_val);
			usleep(200*1000);
		}
		else if (NX4IO_isPressed(BTND))
		{
			const_val--;
			xil_printf("\n Down button is pressed. Val Count= %d",const_val);
			usleep(200*1000);
		}
		else if (NX4IO_isPressed(BTNR))
		{
			const_sat++;
			xil_printf("\n Right button is pressed. Sat Count= %d",const_sat);
			usleep(200*1000);
		}
		else if (NX4IO_isPressed(BTNL))
		{
			const_sat--;
			xil_printf("\n Left button is pressed. Sat Count= %d",const_sat);
			usleep(200*1000);
		}
		else
		{
			// No buttons pressed - no state to change
		}

		// get the rotary count and update the display with the new count
		pmodENC_read_count(&pmodENC_inst, &RotaryCnt);
		if (RotaryCnt != OldRotaryCnt)
		{
			hue = RotaryCnt;
			xil_printf("\n rotary count = %d",hue);
			// rotary count changed so update display
			OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 1);
			OLEDrgb_PutString(&pmodOLEDrgb_inst,"    ");
			OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 1);
			PMDIO_putnum(&pmodOLEDrgb_inst, hue, 10);

			/*if(check)
			{
				Hard();
			}
			else
			{
				Soft();
			}*/
			//NX410_SSEG_setAllDigits(SSEGHI, ssg_disp[5], ssg_disp[4], CC_BLANK, ssg_disp[3], DP_NONE);
			//NX410_SSEG_setAllDigits(SSEGLO, ssg_disp[2], CC_BLANK, ssg_disp[1], ssg_disp[0], DP_NONE);

		}

		if (const_sat != old_const_sat)
		{
			// rotary count changed so update display
			xil_printf("\n sat = %d", const_sat);
			OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 3);
			OLEDrgb_PutString(&pmodOLEDrgb_inst,"    ");
			OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 3);
			PMDIO_putnum(&pmodOLEDrgb_inst, const_sat, 10);

/*			if(check)
			{
				Hard();
			}
			else
			{
				Soft();
			}*/

			//NX410_SSEG_setAllDigits(SSEGHI, ssg_disp[5], ssg_disp[4], CC_BLANK, ssg_disp[3], DP_NONE);
			//NX410_SSEG_setAllDigits(SSEGLO, ssg_disp[2], CC_BLANK, ssg_disp[1], ssg_disp[0], DP_NONE);

		}
		if (const_val != old_const_val)
		{
			// rotary count changed so update display
			xil_printf("\n val = %d", const_val);
			OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 5);
			OLEDrgb_PutString(&pmodOLEDrgb_inst,"    ");
			OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 5);
			PMDIO_putnum(&pmodOLEDrgb_inst, const_val, 10);

			/*if(check)
			{
				Hard();
			}
			else
			{
				Soft();
			}*/

			//NX410_SSEG_setAllDigits(SSEGHI, ssg_disp[5], ssg_disp[4], CC_BLANK, ssg_disp[3], DP_NONE);
			//NX410_SSEG_setAllDigits(SSEGLO, ssg_disp[2], CC_BLANK, ssg_disp[1], ssg_disp[0], DP_NONE);

		}


		rgb_color = OLEDrgb_BuildHSV(hue, const_sat, const_val);
		OLEDrgb_DrawRectangle(&pmodOLEDrgb_inst, 80, 48, 95, 63, rgb_color, true, rgb_color);

		rgb value ;
		value = hsv_conv_rgb(hue, const_sat, const_val);
		/*r_color = OLEDrgb_ExtractRFromRGB(rgb_color);
		g_color = OLEDrgb_ExtractGFromRGB(rgb_color);
		b_color = OLEDrgb_ExtractBFromRGB(rgb_color);
*/
		NX4IO_RGBLED_setChnlEn(RGB1, true, true, true);
		NX4IO_RGBLED_setDutyCycle(RGB1, value.red, value.green, value.blue);
		NX4IO_RGBLED_setChnlEn(RGB2, true, true, true);
		NX4IO_RGBLED_setDutyCycle(RGB2, value.red, value.green, value.blue);

		OldRotaryCnt = RotaryCnt;
		old_const_sat = const_sat;
		old_const_val = const_val;

		sw = NX4IO_getSwitches();
		NX4IO_setLEDs(sw);

		if (sw)
		{
			Hard();
			//check = 1;
		}
		else
		{
			Soft();
			//check = 0;
		}

	} // rotary button has been pressed - exit the loop



	return;
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

	status = XGpio_Initialize(&GPIOInst1, GPIO_1_DEVICE_ID);

	status = XGpio_Initialize(&GPIOInst2, GPIO_2_DEVICE_ID);

	status = XGpio_Initialize(&GPIOInst3, GPIO_3_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	// GPIO0 channel 1 is an 8-bit input port.
	// GPIO0 channel 2 is an 8-bit output port.
	XGpio_SetDataDirection(&GPIOInst0, GPIO_0_INPUT_0_CHANNEL, 0xFF);
	XGpio_SetDataDirection(&GPIOInst0, GPIO_0_OUTPUT_0_CHANNEL, 0x00);
	// GPIO1 channel 1 is an 8-bit input port.
	// GPIO1 channel 2 is an 8-bit input port.
	XGpio_SetDataDirection(&GPIOInst1, GPIO_1_INPUT_0_CHANNEL, 0xFFFFFFFF);
	XGpio_SetDataDirection(&GPIOInst1, GPIO_1_INPUT_1_CHANNEL, 0xFFFFFFFF);
	// GPIO2 channel 1 is an 8-bit input port.
	// GPIO2 channel 2 is an 8-bit input port.
	XGpio_SetDataDirection(&GPIOInst2, GPIO_2_INPUT_0_CHANNEL, 0xFFFFFFFF);
	XGpio_SetDataDirection(&GPIOInst2, GPIO_2_INPUT_1_CHANNEL, 0xFFFFFFFF);
	// GPIO3 channel 1 is an 8-bit input port.
	// GPIO3 channel 2 is an 8-bit input port.
	XGpio_SetDataDirection(&GPIOInst3, GPIO_3_INPUT_0_CHANNEL, 0xFFFFFFFF);
	XGpio_SetDataDirection(&GPIOInst3, GPIO_3_INPUT_1_CHANNEL, 0xFFFFFFFF);


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


	if( ((gpio_in >> 2) & 0x01) == 1 )
		{
			if(r_pflag == 1 && r_nflag == 1)
			{
				r_pcnt = r_pcnt_temp;
				r_ncnt = r_ncnt_temp;
				r_pcnt_temp = 1;
				r_ncnt_temp = 0;
				r_pflag = 0;
				r_nflag = 0;
			}
			else
			{
				r_pcnt_temp = r_pcnt_temp + 1;
				r_pflag = 1;
			}
		}
		else
		{
			if (r_pflag == 1)
			{
			r_ncnt_temp = r_ncnt_temp + 1;
			r_nflag = 1;
			}
			else
			{
			r_nflag = 0;
			}
		}
		if( ((gpio_in >> 1) & 0x01) == 1 )
		{
			if(g_pflag == 1 && g_nflag == 1)
			{
				g_pcnt = g_pcnt_temp;
				g_ncnt = g_ncnt_temp;
				g_pcnt_temp = 1;
				g_ncnt_temp = 0;
				g_pflag = 0;
				g_nflag = 0;
			}
			else
			{
				g_pcnt_temp = g_pcnt_temp + 1;
				g_pflag = 1;
			}
		}
		else
		{
			if(g_pflag == 1)
			{
			g_ncnt_temp = g_ncnt_temp +1;
			g_nflag = 1;
			}
			else
			{
			g_nflag = 0;
			}


		}

		if( (gpio_in & 0x01) == 1 )
		{
			if(b_pflag == 1 && b_nflag == 1)
			{
				b_pcnt = b_pcnt_temp;
				b_ncnt = b_ncnt_temp;
				b_pcnt_temp = 1;
				b_ncnt_temp = 0;
				b_pflag = 0;
				b_nflag = 0;
			}
			else
			{
				b_pcnt_temp = b_pcnt_temp +1;
				b_pflag = 1;
			}
		}
		else
		{
			if(b_pflag == 1)
			{
			b_ncnt_temp = b_ncnt_temp +1;
			b_nflag = 1;
			}
			else
			{
			b_nflag = 0;
			}

		}


}

void Soft()
{
	r_width = r_pcnt + r_ncnt;
	g_width = g_pcnt + g_ncnt;
	b_width = b_pcnt + b_ncnt;

	r = (r_pcnt * 100 )/ r_width;
	g = (g_pcnt * 100 )/ g_width;
	b = (b_pcnt * 100 )/ b_width;

	ssg_display(r, g, b);
}

void Hard()
{
	gpio1_in1 = XGpio_DiscreteRead(&GPIOInst1, GPIO_1_INPUT_0_CHANNEL);
	xil_printf("\n red high = %d", gpio1_in1);
	gpio1_in2 = XGpio_DiscreteRead(&GPIOInst1, GPIO_1_INPUT_1_CHANNEL);
	xil_printf("\n red low = %d", gpio1_in2);
	gpio2_in1 = XGpio_DiscreteRead(&GPIOInst2, GPIO_2_INPUT_0_CHANNEL);
	xil_printf("\n green high = %d", gpio2_in1);
	gpio2_in2 = XGpio_DiscreteRead(&GPIOInst2, GPIO_2_INPUT_1_CHANNEL);
	xil_printf("\n green low = %d", gpio2_in2);
	gpio3_in1 = XGpio_DiscreteRead(&GPIOInst3, GPIO_3_INPUT_0_CHANNEL);
	xil_printf("\n blue high = %d", gpio3_in1);
	gpio3_in2 = XGpio_DiscreteRead(&GPIOInst3, GPIO_3_INPUT_1_CHANNEL);
	xil_printf("\n blue low = %d", gpio3_in2);
	r = (gpio1_in1 * 100 ) / (gpio1_in1 + gpio1_in2);
	g = (gpio2_in1 * 100 ) / (gpio2_in1 + gpio2_in2);
	b = (gpio3_in1 * 100 ) / (gpio3_in1 + gpio3_in2);

	ssg_display(r, g, b);
}
void ssg_display(u32 r, u32 g, u32 b)
{
		//u8 ssg_disp[6];

		ssg_disp[5] = r/10;
		ssg_disp[4] = r%10;

		ssg_disp[3] = g/10;
		ssg_disp[2] = g%10;

		ssg_disp[1] = b/10;
		ssg_disp[0] = b%10;

		NX410_SSEG_setAllDigits(SSEGHI, ssg_disp[5], ssg_disp[4], CC_BLANK, ssg_disp[3], DP_NONE);
		NX410_SSEG_setAllDigits(SSEGLO, ssg_disp[2], CC_BLANK, ssg_disp[1], ssg_disp[0], DP_NONE);

		/*if(ssg_disp[5] != old_ssg_disp[5] || ssg_disp[4] != old_ssg_disp[4] || ssg_disp[3] != old_ssg_disp[3])
		{
		NX410_SSEG_setAllDigits(SSEGHI, ssg_disp[5], ssg_disp[4], CC_BLANK, ssg_disp[3], DP_NONE);
		}
		if(ssg_disp[2] != old_ssg_disp[2] || ssg_disp[1] != old_ssg_disp[1] || ssg_disp[0] != old_ssg_disp[0])
		{
		NX410_SSEG_setAllDigits(SSEGLO, ssg_disp[2], CC_BLANK, ssg_disp[1], ssg_disp[0], DP_NONE);
		}

		ssg_disp[0] = old_ssg_disp[0];
		ssg_disp[1] = old_ssg_disp[1];
		ssg_disp[2] = old_ssg_disp[2];
		ssg_disp[3] = old_ssg_disp[3];
		ssg_disp[4] = old_ssg_disp[4];
		ssg_disp[5] = old_ssg_disp[5];
*/
}

void stop()
{
			OLEDrgb_Clear(&pmodOLEDrgb_inst);
			NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);
			NX410_SSEG_setAllDigits(SSEGLO, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);
			NX4IO_RGBLED_setChnlEn(RGB1, false, false, false);
			NX4IO_RGBLED_setChnlEn(RGB2, false, false, false);
}

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
	       output.red = Val;
	       output.green = t;
	       output.blue = p;
	       break;
	      case 1:
	      output.red = q;
	      output.green = Val;
	      output.blue = p;
	       break;
	      case 2:
	      output.red = p;
	      output.green = Val;
	      output.blue = t;
	       break;
	       case 3:
	    output.red = p;
	    output.green = q;
	    output.blue = Val;
	       break;
	       case 4:
	    output.red = t;
	    output.green = p;
	    output.blue = Val;
	       break;
	       default:
	     output.red = Val;
	     output.green = p;
	     output.blue = q;
	       break;
	   }
	return output;
}

