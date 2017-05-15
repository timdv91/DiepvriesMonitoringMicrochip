#include <p18cxxx.h>
#include "Custom_SPI_Low.h"

/********************************************************************
*     Function Name:    WriteSPI1                                   *
*     Return Value:     Status byte for WCOL detection.             *
*     Parameters:       Single data byte for SPI1 bus.              *
*     Description:      This routine writes a single byte to the    * 
*                       SPI1 bus.                                   *
********************************************************************/
unsigned char WriteSPI1( unsigned char data_out )
{
	unsigned char TempVar;  
	TempVar = SSP1BUF;           // Clears BF
	PIR1bits.SSP1IF = 0;         // Clear interrupt flag
	SSP1CON1bits.WCOL = 0;       //Clear any previous write collision
	SSP1BUF = data_out;          // write byte to SSP1BUF register
	if ( SSP1CON1 & 0x80 )       // test if write collision occurred
		return ( -1 );           // if WCOL bit is set return negative #
	else
		while(!PIR1bits.SSP1IF); // wait until bus cycle complete
	return ( 0 );                // if WCOL bit is not set return non-negative#
}

/********************************************************************
*     Function Name:    getsSPI1                                    *
*     Return Value:     void                                        *
*     Parameters:       address of read string storage location and *
*                       length of string bytes to read              *
*     Description:      This routine reads a string from the SPI1   *
*                       bus.  The number of bytes to read is deter- *
*                       mined by parameter 'length'.                *
********************************************************************/
void getsSPI1( unsigned char *rdptr, unsigned char length )
{
	while ( length )                // stay in loop until length = 0
	{
		*rdptr++ = getcSPI1();        // read a single byte
		length--;                     // reduce string length count by 1
	}
}

/********************************************************************
*     Function Name:    CloseSPI1                                   *
*     Return Value:     void                                        *
*     Parameters:       void                                        *
*     Description:      This function disables the SSPa module. Pin *
*                       I/O returns under the control of the port   *
*                       registers.                                  *
********************************************************************/
#undef CloseSPI1
void CloseSPI1( void )
{
	SSP1CON1 &= 0xDF;               // disable synchronous serial port
}

/*********************************************************************
*     Function Name:    putsSPI1                                     *
*     Return Value:     void                                         *
*     Parameters:       address of write string storage location     *
*     Description:      This routine writes a string to the SPI1 bus.*  
*********************************************************************/
void putsSPI1( unsigned char *wrptr )
{
	while ( *wrptr )                 // test for string null character
	{
		SSP1BUF = *wrptr++;          // initiate SPI1 bus cycle
		while( !SSP1STATbits.BF );   // wait until 'BF' bit is set
	}
}

/********************************************************************
*   Function Name:  OpenSPI1                                        *
*   Return Value:   void                                            *
*   Parameters:     SSP1 peripheral setup bytes                     *
*   Description:    This function sets up the SSP1 module on a      * 
*                   PIC18Cxxx device for use with a Microchip SPI   *
*                   EEPROM device or SPI bus device.                *
********************************************************************/
void OpenSPI1( unsigned char sync_mode, unsigned char bus_mode, unsigned char smp_phase)
{
	SSP1STAT &= 0x3F;               // power on state 
	SSP1CON1 = 0x00;                // power on state
	SSP1CON1 |= sync_mode;          // select serial mode 
	SSP1STAT |= smp_phase;          // select data input sample phase

	switch( bus_mode )
	{
		case 0:                       // SPI1 bus mode 0,0
			SSP1STATbits.CKE = 1;     // data transmitted on rising edge
		break;    
		case 2:                       // SPI1 bus mode 1,0
			SSP1STATbits.CKE = 1;     // data transmitted on falling edge
			SSP1CON1bits.CKP = 1;     // clock idle state high
		break;
		case 3:                       // SPI1 bus mode 1,1
			SSP1CON1bits.CKP = 1;     // clock idle state high
		break;
		default:                      // default SPI1 bus mode 0,1
		break;
	}
	switch( sync_mode )
	{
		case 4:                       // slave mode w /SS enable
			#if defined SPI_IO_V1 
			TRISCbits.TRISC3 = 1;       // define clock pin as input	
			TRISAbits.TRISA5 = 1;       // define /SS1 pin as input
			#elif defined SPI_IO_V2 
			TRISFbits.TRISF7 = 1;       // define /SS1 pin as input
			TRISCbits.TRISC3 = 1;       // define clock pin as input
			#endif
		break;

		case 5:                         // slave mode w/o /SS enable
			TRISCbits.TRISC3 = 1;       // define clock pin as input	
		break;

		default:                      	// master mode, define clock pin as output
			TRISCbits.TRISC3 = 0;       // define clock pin as input	
		break;
	}
	TRISCbits.TRISC4 = 1;       // define SDI pin as input
	TRISCbits.TRISC5 = 0;       // define SDO pin as output

	SSP1CON1 |= SSPENB;             	// enable synchronous serial port
}

/********************************************************************
*     Function Name:    DataRdySPI1                                 *
*     Return Value:     status byte to indicate if BF = 1           *
*     Parameters:       void                                        *
*     Description:      Determine if there is a byte to be read     *
*                       from the SSP1BUF register.                  *
********************************************************************/
#undef DataRdySPI1

unsigned char DataRdySPI1( void )
{
	if ( SSP1STATbits.BF )
		return ( +1 );                // data in SSP1BUF register
	else
		return ( 0 );                 // no data in SSP1BUF register
}
/********************************************************************
*     Function Name:    ReadSPI1                                    *
*     Return Value:     contents of SSP1BUF register                *
*     Parameters:       void                                        *
*     Description:      Read single byte from SPI1 bus.             *
********************************************************************/
unsigned char ReadSPI1( void )
{
	unsigned char TempVar;
	TempVar = SSP1BUF;       //Clear BF
	PIR1bits.SSP1IF = 0;     //Clear interrupt flag
	SSP1BUF = 0x00;          // initiate bus cycle
	while(!PIR1bits.SSP1IF); //wait until cycle complete
	return ( SSP1BUF );      // return with byte read 
}
