#ifndef	_CUSTOM_I2C_H
#define	_CUSTOM_I2C_H

#define	WRITE		0
#define	READ		1

#define	I2C_Start	Custom_SWStartI2C
#define	I2C_Stop	Custom_SWStopI2C
#define	I2C_Write	Custom_SWWriteI2C
#define	I2C_Read	Custom_SWReadI2C
#define	I2C_Ack		Custom_SWAckI2C
#define	I2C_NotAck	Custom_SWNotAckI2C

#ifndef __SWI2C16D_H
#define __SWI2C16D_H

extern far unsigned char I2C_BUFFER;	// temp buffer for R/W operations
extern far unsigned char BIT_COUNTER;	// temp buffer for bit counting

#endif

int I2C_Transmit (int Address, int Command, unsigned char Data);
int I2C_Receive (int Address, int Command, unsigned char *Data, int Bytes);

#endif
