#include "Custom_UART.h"
#include "Custom_UART_Low.h"

int UART_Write_String (const char Data[])
{
	int i;
	for (i=0; Data[i]; i++)
		UART_Transmit (Data[i]);
	return i;
}

int UART_Write_Array (const char Data[], int Bytes)
{
	int i;
	for (i=0; i<Bytes; i++)
		UART_Transmit (Data[i]);
	return i;
}

int UART_Read_String (char Data[])
{
	int i=0;
	while (Data[i++] = UART_Receive ());
	return i;
}

int UART_Read_Array (char Data[], int Bytes)
{
	int i;
	for (i=0; i<Bytes; i++)
		UART_Transmit (Data[i]);
	return i;
}
