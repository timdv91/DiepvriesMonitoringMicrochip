#include <p18cxxx.h>
#include <delays.h>

#include "Custom_I2C.h"
#include "Custom_I2C_Low.h"


int I2C_Transmit (int Address, int Command, unsigned char Data)
{
	int Error = 0;

	I2C_Start ();

	Error |= I2C_Write((Address<<1) | WRITE);
	if (Error)
		return Error;

	Error |= I2C_Write(Command);
	if (Error)
		return Error;

	Error |= I2C_Write (Data);
	if (Error)
		return Error;

	I2C_Stop ();

	return Error;
}

int I2C_Receive (int Address, int Command, unsigned char *Data, int Bytes)
{
	char Error = 0;
	int i=0;

	I2C_Start ();

	Error |= I2C_Write((Address<<1) | WRITE);

	Error |= I2C_Write (Command);

	I2C_Stop ();
	Delay10TCYx(3);              // user may need to modify based on Fosc
	I2C_Start ();

	Error |= I2C_Write ((Address<<1) | READ);

	while (1)
	{
		Data[i++] = I2C_Read ();
		if (i==Bytes)
			break;
		I2C_Ack ();
	}
	I2C_NotAck ();

	I2C_Stop ();

	return Error;
}
