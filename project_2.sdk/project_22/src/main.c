//////////////////////////////////////////////////////////////
// main.c - An Entry Point Function for the Project
//
// Author: Himanshu Devi (hdevi@pdx.edu)
// Date: 01/20/2018
//
// Description:
// ------------
// Implemented Entry point function (main) which initializes Platform
// and all Peripherals such as PmodENC, PmodOLEDrgb, AXI Timer, GPIO Ports
// sets all digits of 7 Segment Display as BLANK and Displays "ECE" on it.
// Further function is called to get HSV values.
// All MACROS, Function Declarations and Variable Declarations are in header
// file named "timer_int.h". Also the file contains the standard library functions
// from Xilinx library.
////////////////////////////////////////////////////////////////

#include "timer_int.h"

int main(void)
{
	//Enables Caches and UART
	init_platform();

	uint32_t sts;
	//Initialize the System
	 sts = do_init();
	 if (XST_SUCCESS != sts)
	 {
		 xil_printf(" System Initialization failed\n");
	 	exit(1);
	 }

	 microblaze_enable_interrupts();

	 	xil_printf("Colour Wheel Implementation By Himanshu Devi\n");
	 	// turn off the LEDs and clear the seven segment display
		NX410_SSEG_setAllDigits(SSEGLO, CC_BLANK, CC_E, CC_BLANK, CC_BLANK, DP_NONE);
		NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_E, CC_BLANK, CC_C, DP_NONE);
		usleep(3000 * 100);

		// Displays "E C E" on 7 Segment display
		NX410_SSEG_setAllDigits(SSEGLO, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);
		NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);
		usleep(2000);

		//Function Call to Color_Wheel values
	 	Color_Wheel();

	 	// cleanup and exit
	 	cleanup_platform();
	 	return 0;
}
