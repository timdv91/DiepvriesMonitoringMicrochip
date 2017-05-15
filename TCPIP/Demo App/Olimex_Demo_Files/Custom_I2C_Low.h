#ifndef	_CUSTOM_I2C_LOW_H
#define	_CUSTOM_I2C_LOW_H

#define  I2C_DATA_LOW	TRISEbits.TRISE1 = 0;	// define macro for data pin output
#define  I2C_DATA_HI	TRISEbits.TRISE1 = 1;	// define macro for data pin input
#define  I2C_DATA_LAT	LATEbits.LATE1			// define macro for data pin latch
#define  I2C_DATA_PIN	PORTEbits.RE1			// define macro for data pin

#define  I2C_CLOCK_LOW	TRISEbits.TRISE0 = 0;	// define macro for clock pin output
#define  I2C_CLOCK_HI	TRISEbits.TRISE0 = 1;	// define macro for clock pin input
#define  I2C_CLOCK_LAT	LATEbits.LATE0			// define macro for clock pin latch
#define  I2C_CLOCK_PIN	PORTEbits.RE0			// define macro for clock pin

//#define	DELAY	30
extern unsigned char I2C_Delay;

#ifndef __SWI2C16D_H
#define __SWI2C16D_H

extern far unsigned char I2C_BUFFER;		// temp buffer for R/W operations
extern far unsigned char BIT_COUNTER;		// temp buffer for bit counting

#endif

void Custom_SWStartI2C ( void );
void Custom_SWStopI2C ( void );
signed char Custom_SWWriteI2C( unsigned char data_out );
unsigned int Custom_SWReadI2C( void );
signed char Custom_SWNotAckI2C( void );
signed char Custom_SWAckI2C( void );

#endif
