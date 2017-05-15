#include <p18cxxx.h>
#include <delays.h>

#include "Custom_I2C_Low.h"
unsigned char I2C_Delay=30;

/********************************************************************
*     Function Name:    void SWStartI2C(void)                       *
*     Return Value:     void                                        *
*     Parameters:       void                                        *
*     Description:      Send I2C bus start condition.               *
********************************************************************/
void Custom_SWStartI2C( void )
{
	I2C_DATA_LAT = 0;		// set data pin latch to 0
	I2C_DATA_LOW;			// set pin to output to drive low
	Delay10TCYx(I2C_Delay);		// user may need to modify based on Fosc
}

/********************************************************************
*     Function Name:    void SWStopI2C(void)                        *
*     Return Value:     void                                        *
*     Parameters:       void                                        *
*     Description:      Send I2C bus stop condition.                *
********************************************************************/
void Custom_SWStopI2C( void )
{
	I2C_CLOCK_LAT = 0;		// set clock pin latch to 0
	I2C_CLOCK_LOW;			// set clock pin to output to drive low
	I2C_DATA_LAT = 0;		// set data pin latch to 0
	I2C_DATA_LOW;			// set data pin output to drive low
	Delay10TCYx(I2C_Delay);		// user may need to modify based on Fosc
	I2C_CLOCK_HI;			// release clock pin to float high
	Delay10TCYx(I2C_Delay*2);	// user may need to modify based on Fosc
	I2C_DATA_HI;			// release data pin to float high
	Delay10TCYx(I2C_Delay/2);	// user may need to modify based on Fosc
}

/**********************************************************************
*     Function Name:    signed char SWWriteI2C(unsigned char data_out)*
*     Return Value:     error condition if bus error occurred         *
*     Parameters:       Single data byte for I2C bus.                 *
*     Description:      This routine writes a single byte to the      *
*                       I2C bus.                                      *
**********************************************************************/
signed char Custom_SWWriteI2C( unsigned char data_out )
{
	BIT_COUNTER = 8;		// initialize bit counter
	I2C_BUFFER = data_out;	// data to send out
	I2C_CLOCK_LAT = 0;		// set latch to 0
	I2C_DATA_LAT = 0;		// set data pin latch to 0

	do
	{
		{
			I2C_BUFFER &= 0xFF;		// generate movlb instruction
			_asm
			rlcf I2C_BUFFER,1,1		// rotate into carry and test  
			_endasm

			if ( STATUS & 0x01 )	// if carry set, transmit out logic 1
			{
				I2C_CLOCK_LOW;		// set clock pin output to drive low
				I2C_DATA_HI;		// release data line to float high 
				Delay10TCYx(I2C_Delay);	// user may need to modify based on Fosc
				I2C_CLOCK_HI;		// release clock line to float high 
				Delay10TCYx(I2C_Delay);	// user may need to modify based on Fosc
			}
			else					// transmit out logic 0
			{
				I2C_CLOCK_LOW;		// set clock pin output to drive low
				I2C_DATA_LOW;		// set data pin output to drive low
				Delay10TCYx(I2C_Delay);	// user may need to modify based on Fosc
				I2C_CLOCK_HI;		// release clock line to float high 
				Delay10TCYx(I2C_Delay);	// user may need to modify based on Fosc
			}

			BIT_COUNTER --;			// reduce bit counter by 1
		}
	}
	while ( BIT_COUNTER );			// stay in transmit loop until byte sent 

	I2C_CLOCK_LOW;					// set clock pin output to drive low
	Delay10TCYx(I2C_Delay);				// user may need to modify based on Fosc
	I2C_CLOCK_HI;					// release clock line to float high 

	return ( 0 );					// return with no error
}

/********************************************************************
*     Function Name:    unsigned int SWReadI2C(void)                *
*     Return Value:     data byte or error condition                *
*     Parameters:       void                                        *
*     Description:      Read single byte from I2C bus.              *
********************************************************************/
unsigned int Custom_SWReadI2C( void )
{
	BIT_COUNTER = 8;		// set bit count for byte 
	I2C_CLOCK_LAT = 0;		// set clock pin latch to 0

	do
	{
		I2C_CLOCK_LOW;			// set clock pin output to drive low
		I2C_DATA_HI;			// release data line to float high
		Delay10TCYx(I2C_Delay);		// user may need to modify based on Fosc
		I2C_CLOCK_HI;			// release clock line to float high
		Delay10TCYx(I2C_Delay);		// user may need to modify based on Fosc


		I2C_BUFFER <<= 1;		// shift composed byte by 1
		I2C_BUFFER &= 0xFE;		// clear bit 0

		if ( I2C_DATA_PIN )		// is data line high
			I2C_BUFFER |= 0x01;	// set bit 0 to logic 1
	}
	while ( --BIT_COUNTER );	// stay until 8 bits have been acquired

	return ( (unsigned int) I2C_BUFFER );	// return with data
}

signed char Custom_SWAckI2C( void )
{
	I2C_CLOCK_LAT = 0;		// set clock pin latch to 0  
	I2C_CLOCK_LOW;			// set clock pin to output to drive low
	I2C_DATA_LOW;			// release data line to float high 
	Delay10TCYx(I2C_Delay);		// user may need to modify based on Fosc
	I2C_CLOCK_HI;			// release clock line to float high
	Delay10TCYx(I2C_Delay);		// user may need to modify based on Fosc

	if ( I2C_DATA_PIN )		// error if ack = 1, slave did not ack
	{
		return ( -1 );		// return with acknowledge error
	}
	else
	{
		return ( 0 );		// return with no error
	}
}

signed char Custom_SWNotAckI2C( void )
{
	I2C_CLOCK_LAT = 0;		// set clock pin latch to 0  
	I2C_CLOCK_LOW;			// set clock pin to output to drive low
	I2C_DATA_HI;			// release data line to float high 
	Delay10TCYx(I2C_Delay);		// user may need to modify based on Fosc
	I2C_CLOCK_HI;			// release clock line to float high
	Delay10TCYx(I2C_Delay);		// user may need to modify based on Fosc

	if ( I2C_DATA_PIN )		// error if ack = 1, slave did not ack
	{
		return ( -1 );		// return with acknowledge error
	}
	else
	{
		return ( 0 );		// return with no error
	}
}
