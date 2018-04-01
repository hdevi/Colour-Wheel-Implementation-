//////////////////////////////////////////////////////////////
// peripherals.c - Source code to have required application running on Nexsys4 by interfacing with different peripherals
//
// Author: Himanshu Devi (hdevi@pdx.edu)
// Date: 01/20/2018
//
// Description:
// ------------
// Implemented Functions for hardware detection and software detection of PWM.
// Display Functions on OLEDrgb. Seven Segment Display Function. Function to display
// different colors when Rotary Encoder and Buttons are pressed.
// When the Rotary Encoder Button is Pressed it terminates the Application.
////////////////////////////////////////////////////////////////

#include "peripherals.h"

//Variable declaration and initialization
hsv_t data_hsv = { 0, 255 , 255};
rgb_t data_rgb;
uint16_t data;
uint16_t ledvalue;

/* Function to calculate duty cycle from hardware detection and display on seven segment display*/
int hardware_detect(void)
{
	pwm_red_H = XGpio_DiscreteRead(&GPIOInst1,GPIO_1_INPUT_0_CHANNEL);
	pwm_red_L = XGpio_DiscreteRead(&GPIOInst1,GPIO_1_INPUT_1_CHANNEL);
	pwm_green_H = XGpio_DiscreteRead(&GPIOInst2,GPIO_2_INPUT_0_CHANNEL);
	pwm_green_L = XGpio_DiscreteRead(&GPIOInst2,GPIO_2_INPUT_1_CHANNEL);
	pwm_blue_H = XGpio_DiscreteRead(&GPIOInst3,GPIO_3_INPUT_0_CHANNEL);
	pwm_blue_L = XGpio_DiscreteRead(&GPIOInst3,GPIO_3_INPUT_1_CHANNEL);

	uint8_t hw_duty_cycle_red = pwm_red_H*100/(pwm_red_H + pwm_red_L);
	xil_printf("Hardware_Red = %d\n",hw_duty_cycle_red);
	uint8_t hw_duty_cycle_blue = pwm_green_H*100/(pwm_green_H + pwm_green_L);
	xil_printf("Hardware_Blue = %d\n",hw_duty_cycle_blue);
	uint8_t hw_duty_cycle_green = pwm_blue_H*100/(pwm_blue_H + pwm_blue_L);
	xil_printf("Hardware_Green = %d\n",hw_duty_cycle_green);

	SevenSeg_display(hw_duty_cycle_red,hw_duty_cycle_green,hw_duty_cycle_blue);
	usleep(1000);

	return 0;
}

/* Function to calculate duty cycle from software detection and display on seven segment display*/
void software_detect(void)
{
	//if count is greater then it makes the high time of each signal to 0
	if(count >= 10)
	{
		final_red_high = 0;
		final_blue_high = 0;
		final_green_high = 0;
	}
	uint8_t sw_duty_cycle_red= final_red_high*100/(final_red_low + final_red_high );
	xil_printf("Software_Red = %d\n",sw_duty_cycle_red);
	uint8_t sw_duty_cycle_blue= final_blue_high*100/(final_blue_low + final_blue_high );
	xil_printf("Software_Blue = %d\n",sw_duty_cycle_blue);
	uint8_t sw_duty_cycle_green= final_green_high*100/(final_green_low + final_green_high) ;
	xil_printf("Software_Green = %d\n",sw_duty_cycle_green);

	SevenSeg_display(sw_duty_cycle_red,sw_duty_cycle_green,sw_duty_cycle_blue);
	usleep(1000);

}


/****************************************************************************

Displays Hue,Saturation and Value values and a rectangle on the display

 *****************************************************************************/

void Oled_display(hsv_t datahsv)
{
	OLEDrgb_Clear(&pmodOLEDrgb_inst);
	//Font Colour Green
	OLEDrgb_SetFontColor(&pmodOLEDrgb_inst,OLEDrgb_BuildRGB(0,0,255));
	//Set Cursor to row 1 column 0
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 1);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "Red:");
	PMDIO_putnum(&pmodOLEDrgb_inst, data_hsv.hue, 10);
	//Set Cursor to row 3 column 0
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 3);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "Green:");
	PMDIO_putnum(&pmodOLEDrgb_inst, data_hsv.sat, 10);
	//Set Cursor to row 5 column 0
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 5);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "Blue:");
	PMDIO_putnum(&pmodOLEDrgb_inst, data_hsv.val, 10);

	//To display Rectangle on OLEDrgb which shows different colors
	OLEDrgb_DrawRectangle(&pmodOLEDrgb_inst, 70, 15, 90, 30, OLEDrgb_BuildHSV(data_hsv.hue,data_hsv.sat,data_hsv.val), true, OLEDrgb_BuildHSV(data_hsv.hue,data_hsv.sat,data_hsv.val));

}

/****************************************************************************

Seven segment display function
Displays RR GG BB on the 8 segments

 *****************************************************************************/
void SevenSeg_display(uint8_t red,uint8_t green, uint8_t blue)
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

	//Display Duty cycle of Red LED on Seven Segment
	NX4IO_SSEG_setDigit(SSEGHI, DIGIT7, (red/10));
	NX4IO_SSEG_setDigit(SSEGHI, DIGIT6, (red%10));

	//Display Duty cycle of Green LED on Seven Segment
	NX4IO_SSEG_setDigit(SSEGHI, DIGIT4, (green/10));
	NX4IO_SSEG_setDigit(SSEGLO, DIGIT3, (green%10));

	//Display Duty cycle of Blue LED on Seven Segment
	NX4IO_SSEG_setDigit(SSEGLO, DIGIT1, (blue/10));
	NX4IO_SSEG_setDigit(SSEGLO, DIGIT0, (blue%10));

	NX4IO_SSEG_setDigit(SSEGHI, DIGIT5, CC_BLANK);

}

//Function to Display Initial Message on OLEDrgb
void initial_display()
{
	OLEDrgb_Clear(&pmodOLEDrgb_inst);
	OLEDrgb_SetFontColor(&pmodOLEDrgb_inst,OLEDrgb_BuildRGB(0,0,255));

	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 1);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "Welcome to");

	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 3);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "Project 1");

	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 5);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "ColourWheel");
}

//Function to Display Exit Message on OLEDrgb
void exit_display()
{
	OLEDrgb_Clear(&pmodOLEDrgb_inst);
	OLEDrgb_SetFontColor(&pmodOLEDrgb_inst,OLEDrgb_BuildRGB(0,0,255));

	OLEDrgb_SetScrolling(&pmodOLEDrgb_inst,0,3,1,3,6);
	OLEDrgb_EnableScrolling(&pmodOLEDrgb_inst,true);

	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 1);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "Thank You");

	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 3);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "Done By");

	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 5);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "Himanshu");

	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 7);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "Devi");

	usleep(3000 * 100);
}

//Function to clean up all Peripherals When exited
void peripherals_exit()
{
	//Display BYE BYE message on Seven Segment
	NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_B, CC_LCY, CC_E, DP_NONE);
	NX410_SSEG_setAllDigits(SSEGLO, CC_B, CC_LCY, CC_E, CC_BLANK, DP_NONE);
	usleep(5000 * 100);

	//Disable the Two Channels
	NX4IO_RGBLED_setChnlEn(RGB1, false,false,false);
	NX4IO_RGBLED_setChnlEn(RGB2, false,false,false);

	// shift a 1 through all of the leds
	ledvalue = 0x0040;

	do
	{
		NX4IO_setLEDs(ledvalue);
		usleep(5000 * 100);
		ledvalue = ledvalue << 1;
	} while (ledvalue != 0);

	OLEDrgb_Clear(&pmodOLEDrgb_inst);
	OLEDrgb_end(&pmodOLEDrgb_inst);
}

/****************************************************************************/
/**
 * Color_Wheel -takes the HSV values from rotary encoder and push buttons and calls PWM functions
 *
 *****************************************************************************/
void Color_Wheel(void)
{
	//Variables Declaration for Rotary Encoder
	int  RotaryIncr;
	bool RotaryNoNeg;

	// test the rotary encoder functions
	RotaryIncr = 1;
	RotaryNoNeg = false;

	//To display initial Messages
	initial_display();

	// Initialize the rotary encoder
	// clear the counter of the encoder if initialized to garbage value on power on
	pmodENC_init(&pmodENC_inst, RotaryIncr, RotaryNoNeg);

	while(1)
	{
		//Assigning current value to temporary variable which is of hsv.
		hsv_t temp_hsv = data_hsv;

		// read the new value from the rotary encoder and show it on the display
		pmodENC_read_count(&pmodENC_inst, &RotaryCnt);

		//Sets the Led As per Rotary Count
		uint16_t ledcnt = (RotaryCnt  & 0x00FF) << 6;
		NX4IO_setLEDs(ledcnt);

		// exit the loop if button is pressed is pressed.
		if ( pmodENC_is_button_pressed(&pmodENC_inst) )
		{
			xil_printf("\n exiting loop");
			//Messages to display when exit
			exit_display();
			//Clean up the Peripherals
			peripherals_exit();
			break;
		}

		//sets the current Rotary count as hue value
		data_hsv.hue = RotaryCnt;

		/* Buttons are used to adjust S and V values*/
		if (NX4IO_isPressed(BTNU))
				data_hsv.val ++;

		else if (NX4IO_isPressed(BTNR))
				data_hsv.sat ++;

		else if (NX4IO_isPressed(BTNL))
				data_hsv.sat--;

		else if (NX4IO_isPressed(BTND))
				data_hsv.val--;


		/* Algorithm to extract RGB values from HSV*/
		data = OLEDrgb_BuildHSV(data_hsv.hue,data_hsv.sat,data_hsv.val);

		//Red Extracted
		data_rgb.red = OLEDrgb_ExtractRFromRGB(data);
		//Green Extracted
		data_rgb.green=OLEDrgb_ExtractGFromRGB(data);
		//Blue Extracted
		data_rgb.blue=OLEDrgb_ExtractBFromRGB(data);

		/* display HSV duty cycle on OLED display and drive LED*/
		if (!compare_hsv(temp_hsv,data_hsv))
		{
			Oled_display(data_hsv);
			//Enabling Channel For RGB1
			NX4IO_RGBLED_setChnlEn(RGB1, true, true, true);
			//Sets the Duty Cycle by extracting Red,Green and Blue for RGB1
			NX4IO_RGBLED_setDutyCycle(RGB1, (data_rgb.red)<<3, (data_rgb.green) << 2, (data_rgb.blue)<<3);
			//Enabling Channel For RGB2
			NX4IO_RGBLED_setChnlEn(RGB2, true, true, true);
			//Sets the Duty Cycle by extracting Red,Green and Blue for RGB2
			NX4IO_RGBLED_setDutyCycle(RGB2, (data_rgb.red) << 3, (data_rgb.green) << 2, (data_rgb.blue) << 3);
		}

		/* check switch status for sw/hw */
		ledvalue = NX4IO_getSwitches();
		//Set the LED
		NX4IO_setLEDs(ledvalue);

		if(ledvalue==1)
		{
			//If ledvalue is 1 then Hardware detect
			OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 5, 9);
			OLEDrgb_PutChar(&pmodOLEDrgb_inst, 'H');
			hardware_detect();
		}
		else
		{
			//If ledvalue is 0 then Software detect
			OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 5, 9);
			OLEDrgb_PutChar(&pmodOLEDrgb_inst, 'S');
			software_detect();
		}

	}  //exit the loop

	//Blank All the Digits on Seven Segment
	NX410_SSEG_setAllDigits(SSEGLO, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);
	NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);
	usleep(5000 * 100);
}

//Compare HSV values
int compare_hsv( hsv_t old,hsv_t new)
{
	if(old.hue == new.hue && old.sat == new.sat && old.val == new.val)
		return 1;
	else
		return 0;
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

/****************************************************************************/
/**
 * insert delay (in microseconds) between instructions.
 *
 * This function should be in libc but it seems to be missing.  This emulation implements
 * a delay loop with (really) approximate timing; not perfect but it gets the job done.
 *
 * @param	usec is the requested delay in microseconds
 *
 * @return	*NONE*
 *
 * @note
 * This emulation assumes that the microblaze is running @ 100MHz and takes 15 clocks
 * per iteration - this is probably totally bogus but it's a start.
 *
 *****************************************************************************/

/*static const u32	DELAY_1US_CONSTANT	= 50;	// constant for 1 microsecond delay

int usleep(u32 usec)
{
	volatile u32 i, j;

	for (i = 0; i < usec; i++)
	{
		for (j = 0; j < DELAY_1US_CONSTANT; j++);
	}
	return;
}*/



rgb_t hsv_conv_rgb(uint8_t Hue, uint8_t Sat, uint8_t Val)
{
	uint8_t region, remain, p, q, t;
	rgb_t 	output;
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
