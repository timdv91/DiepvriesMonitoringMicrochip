#ifndef	_CUSTOM_UART_H
#define	_CUSTOM_UART_H

int UART_Write_String (const char Data[]);

int UART_Write_Array (const char Data[], int Bytes);

int UART_Read_String (char Data[]);

int UART_Read_Array (char Data[], int Bytes);

#endif
