#include <p18cxxx.h>
#include <usart.h>

#include "Configs/HWP OLIMEX_PIC_WEB.h"	// needed for GetPeripheralClock () function
#include "Custom_UART_Low.h"

void UART_Init (unsigned long int BaudRate)
{
	// BaudRate ReInit
	// See if we can use the high baud rate setting
	TXSTA = 0x20;
	RCSTA = 0x90;
	BAUDCONbits.BRG16 = 1;
	TXSTAbits.BRGH = 1;
	SPBRGH = (((GetPeripheralClock()+BaudRate/2)/BaudRate-1)>>8) & 0xFF;
	SPBRG = ((GetPeripheralClock()+BaudRate/2)/BaudRate-1) & 0xFF;
	return;
}

// This is a non-blocking version of ReadUSART function.
char UART_Receive (void)
{
	if (PIR1 & 0x20)
		return RCREG;
	else
		return 0;
}

void UART_Transmit (char data)
{
	while (!(PIR1 & 0x10));
	TXREG = data;
	return;
}
