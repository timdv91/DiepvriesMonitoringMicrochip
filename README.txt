Demo project that implements web server with web page for Olimex PIC-WEB rev.C based on Microchip TCP/IP Stack 5.42 example from Microchip Solutions library released on 2013/06/15.

The demo allows you to evaluate the Microchip TCPIP stack running on PIC-WEB. The stack allows board configuration modifications via local Ethernet connection or remote Internet connection via a web page. Also gives an option to control remotely slave boards connected to the UEXT by any of these three interfaces: UART, I2C, SPI.

Build and program info:

Project is built and tested with MPLAB 8.92 or MPLABX 3.00 and PIC18 C Compiler 3.47. It is highly recommended to use the exact same compiler. Adapting the code for other compilers (for instance XC8) may be possible but Olimex provides no support for the example for compilers or IDEs different than the ones suggested.

It was programmed using OLIMEX PIC-KIT3 programmer/debugger and PIC-ICSP adapter, TFTP.exe v6.1.7600.16385 on Windows 7 Ultimate SP1 64bit.

All PIC-WEB boards manufactured after 2014/04/01 have a bootloader already programmed! If you have a board with the microcontroller already programmed you might upload this demo without the need of a third-party tool. Still it is highly recommended to have a PIC compatible programmer in case you manage to overwrite the bootloader or you want to use the board purely for custom projects.

------------------------------------------------------------------------------------------------------------------------------------------------------

Updating the firmware:

This demo is made compatible with the TCPIP bootloader (BL) based on the included in the Microchip Solutions 2013/06/15. The BL project has been modified so now the watchdog timer is disabled, the default IP address which the board is given is 192.168.0.200 and the optimizations are enabled.

The BL code and binary might be found at the web page of PIC-WEB.

In order to upload your own program using the BL you must prepare the hex which to be upload (using MPLAB or another IDE), reset the board and in the next 4 seconds (while it is in BL state) you must trigger the uploading of the hex file using tftp.exe in the following format:
tftp <IP> put <hex file>

For example:
tftp 192.168.0.200 put "C:\Users\Test-Windows7-x64\Desktop\PIC-WEB Demo.hex"

If you use Windows 7 or Vista, by default tftp isn't available. To enable it check this thread: http://avtech.com/Support/index.php?action=kb&article=108

Flash memory usage of the uploaded hex file must be less than 121788 bytes (60894 words). Otherwise the program will overlap the BL memory and uploading will fail. For more information about the BL check the manual for TCPIP Stack: http://www.egr.msu.edu/classes/ece480/capstone/fall11/group03/TCPIP%20Stack%20Help.pdf
page 117-123 (if you watch the pdf pages it is 145-151, this offset of 28 pages is because of the content in the beginning).

------------------------------------------------------------------------------------------------------------------------------------------------------

In order to get the demo going please follow the instructions below:
 
0) Power the board with external power supply.
1) Program the PIC-WEB using:
1.0) the embedded BL and tftp.exe as mentioned above (in this case you must connect LAN in this stage and reboot to enter BL mode).
1.1) PIC18 compatible programmer/debugger with the MPLAB/MPLABX projects or the prebuilt *.hex file (prebuilt binaries are found in folder "\TCPIP\Prebuilt files").
2) Connect LAN cable to the connector.
3) Use Microchip Ethernet Discoverer utility to find the IP address of the board or use the console terminal program to follow the output messages about the IP address. Microchip Ethernet Discoverer is part of Microchip application libraries.
4) Open that IP address using an internet browser to check and manipulate the state of the board. You will be shown a web page that has some subpages on the left.
	4.0) "Overview" (which is the basic page) shows some info about the board and a box on the right which indicates the state of some pins:
	- On the top of the box-menu you will see a dot which indicates the state of the LED. It also gives you an option to toggle it by click on the dot. Color of the dot will change on toggling.
	- This is followed by an input - Button. It indicates whether the button is pressed 'V'; or not '^'.
	- Temperature - Shows the temperature of the board.
	- Potentiometer - Shows digital value of AN input 8.
	- Reset button - It is used to reboot the board via web interface so you can re-enter in BL mode and update software from a distance.
	NOTE: If you upload a new software without this kind of option (remote software reset) you won't be able to software reset the board so you will have to use the reset button or turn off and on the power supply.
	4.1) "UART Demo" - this is a demonstration of how the PIC-WEB can be a host to another board via UART interface. Since we can't change the configuration of the slave board we must attune the master (PIC-WEB). So the page gives the option to change the baudrate of the PIC.
	On the next text box you can input text which will be send to the slave by triggering the "Send" button. Below it there is an output box where the received data from the slave is visualized.
	4.2) "I2C Demo" - demonstrate communication between the host and a slave via I2C interface. In order to work you have to input the address of the slave and the command which you want to trigger using the fields Address/Command. The third field (Input) depends on the action. If you want to send data to the slave this will be the value to be sent. If you receive data this will be the number of bytes* which the host expect to receive from the slave. The received data will be shown below as a array of hexadecimal numbers.
	4.3) "SPI Demo" - similar to I2C Demo here it is demonstrated functionality of SPI module on the UEXT. But here there is no Address and Command code, so the only input you have to do is the data to be sent or number of received bytes* (same like I2C demo).
	
	* Note - By default you can input maximum 4 bytes to be received. If you need more you can change the value of the macro OUTPUT_RECEIVE_MAX_BYTES inside the file CustomHTTPApp.c

------------------------------------------------------------------------------------------------------------------------------------------------------

Updating the webpage:

If you want to change or edit the web page you must edit the files in:
"<extract directory>\PIC-WEB 5.42 UEXT Full\TCPIP\Demo App\Olimex_PIC-WEB_WebPages2"
(or WebPages2 which keeps the original page provided by Microchip) and then re-generate the files: HTTPPrint.h; HTTPPrint.idx; MFPSImg2.bin. In order to do this you have to use the MPFS2 utility provided in the Microchip TCP/IP stack. It could be found at:
"<extract directory>\PIC-WEB 5.42 UEXT Full\Microchip\TCPIP Stack\Utilities\MPFS2.jar".
In case you change the dynamic variables (for instance these inside status.xml file) it is STRONGLY RECOMMENDED to delete/rename the old three files (HTTPPrint.h, HTTPPrint.idx and MFPSImg.bin) before generate their new version. Otherwise it may not work properly.
After that you must rebuild the project and program the board with the new *.hex file. If you don't change the dynamic variables HTTPPrint.h, HTTPPrint.idx files should be the same so this step (rebuilding and reprogramming) isn't necessary.
Open a browser and input the IP address of the board. You can see the IP address using the Microchip Ethernet Discoverer utility. It could be found here:
"<extract directory>\PIC-WEB 5.42 UEXT Full\Microchip\TCPIP Stack\Utilities\TCPIP Discoverer.jar". Append text "/mpfsupload" (so it's something like: "http://192.168.0.188/mpfsupload") and there select the *.bin file generated by the MPFS2 utility.

------------------------------------------------------------------------------------------------------------------------------------------------------

Note that Microchip has some rights reserved on the examples published by Olimex. The project above is based on the Microchip's Application Libraries. Please respect their intellectual property and conditions of usage.   

Author:  Stanimir Petev
Company: Olimex LTD
Date:    2015/06/25