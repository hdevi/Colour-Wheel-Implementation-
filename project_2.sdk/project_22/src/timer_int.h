//////////////////////////////////////////////////////////////
// timer_int.h - Header file for timer_int.c
//
// Author: Himanshu Devi (hdevi@pdx.edu)
// Date: 01/20/2018
//
// Description:
// ------------
// Parameters for AXI Timer and interrupt controller
// Function Declarations used in timer_init.c file 
////////////////////////////////////////////////////////////////
#ifndef SRC_TIMER_INT_H_
#define SRC_TIMER_INT_H_

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "platform.h"
#include "xparameters.h"
#include "xstatus.h"
#include "microblaze_sleep.h"
#include "nexys4IO.h"
#include "pmodENC.h"
#include "xgpio.h"
#include "xintc.h"
#include "xtmrctr.h"

// Clock frequencies
#define CPU_CLOCK_FREQ_HZ		XPAR_CPU_CORE_CLOCK_FREQ_HZ
#define AXI_CLOCK_FREQ_HZ		XPAR_CPU_M_AXI_DP_FREQ_HZ

// AXI timer parameters
#define AXI_TIMER_DEVICE_ID		XPAR_AXI_TIMER_0_DEVICE_ID
#define AXI_TIMER_BASEADDR		XPAR_AXI_TIMER_0_BASEADDR
#define AXI_TIMER_HIGHADDR		XPAR_AXI_TIMER_0_HIGHADDR
#define TmrCtrNumber			0


// Fixed Interval timer - 100 MHz input clock, 40KHz output clock
// FIT_COUNT_1MSEC = FIT_CLOCK_FREQ_HZ * .001
#define FIT_IN_CLOCK_FREQ_HZ	CPU_CLOCK_FREQ_HZ
#define FIT_CLOCK_FREQ_HZ		40000
#define FIT_COUNT				(FIT_IN_CLOCK_FREQ_HZ / FIT_CLOCK_FREQ_HZ)
#define FIT_COUNT_1MSEC			40

// Interrupt Controller parameters
#define INTC_DEVICE_ID			XPAR_INTC_0_DEVICE_ID
#define FIT_INTERRUPT_ID		XPAR_MICROBLAZE_0_AXI_INTC_FIT_TIMER_0_INTERRUPT_INTR

XIntc 		IntrptCtlrInst;				// Interrupt Controller instance
XTmrCtr	    AXITimerInst;				// PWM timer instance

/**************************************Function declarations***********************************************************/
int	 do_init(void);
void FIT_Handler(void);										// fixed interval timer interrupt handler
int AXI_Timer_initialize(void);
void Color_Wheel(void);

#endif /* SRC_TIMER_INT_H_ */
