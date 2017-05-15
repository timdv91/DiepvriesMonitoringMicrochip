#include <p18cxxx.h>

#include "Custom_SPI.h"
#include "Custom_SPI_Low.h"

void SPI_Initialize (void)
{
	UEXT_CS_TRIS = 0;
	UEXT_SPI_OFF;
	OpenSPI1 (SPI_FOSC_64, MODE_00, SMPMID );
}

void SPI_Transmit (unsigned char Data)
{
	if (LATFbits.LATF7 == 0)	// if Flash memory chip select is active, ignore SPI command, because it will mess with the webpage
		return;
	UEXT_SPI_ON;
	WriteSPI1 (Data);
	UEXT_SPI_OFF;
}

void SPI_Receive (unsigned char Data[], int Bytes)
{
	if (LATFbits.LATF7 == 0)	// if Flash memory chip select is active, ignore SPI command, because it will mess with the webpage
		return;
	UEXT_SPI_ON;
	getsSPI1 (Data, Bytes);
	UEXT_SPI_OFF;
}
