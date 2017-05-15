#ifndef	_CUSTOM_SPI_H
#define	_CUSTOM_SPI_H

// define macro for TRIS register of SPI chip select on UEXT 
#define  UEXT_CS_TRIS	TRISEbits.TRISE2
// define macro for LAT register of SPI chip select on UEXT 
#define  UEXT_CS_LAT	LATEbits.LATE2

#define	UEXT_SPI_ON		UEXT_CS_LAT = 0
#define	UEXT_SPI_OFF	UEXT_CS_LAT = 1

void SPI_Initialize (void);
void SPI_Transmit (unsigned char Data);
void SPI_Receive (unsigned char Data[], int Bytes);

#endif
