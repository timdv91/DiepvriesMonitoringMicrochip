#ifndef	_CUSTOM_UART_LOW_H
#define	_CUSTOM_UART_LOW_H

void UART_Init (unsigned long int BaudRate);

// This is a non-blocking version of ReadUSART function.
char UART_Receive (void);

void UART_Transmit (char data);

#endif
