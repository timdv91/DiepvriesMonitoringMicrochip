#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC-WEB_5.42_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC-WEB_5.42_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../BerkeleyTCPClientDemo.c ../BerkeleyTCPServerDemo.c ../BerkeleyUDPClientDemo.c ../GenericTCPClient.c ../GenericTCPServer.c ../PingDemo.c ../SMTPDemo.c ../UARTConfig.c ../Olimex_Demo_Files/Custom_I2C.c ../Olimex_Demo_Files/Custom_I2C_Low.c ../Olimex_Demo_Files/Custom_SPI.c ../Olimex_Demo_Files/Custom_SPI_Low.c ../Olimex_Demo_Files/Custom_UART.c ../Olimex_Demo_Files/Custom_UART_Low.c ../Olimex_Demo_Files/Misc_Functions.c "../../../Microchip/TCPIP Stack/Announce.c" "../../../Microchip/TCPIP Stack/ARP.c" "../../../Microchip/TCPIP Stack/AutoIP.c" "../../../Microchip/TCPIP Stack/BerkeleyAPI.c" "../../../Microchip/TCPIP Stack/Delay.c" "../../../Microchip/TCPIP Stack/DHCP.c" "../../../Microchip/TCPIP Stack/DHCPs.c" "../../../Microchip/TCPIP Stack/DNS.c" "../../../Microchip/TCPIP Stack/DNSs.c" "../../../Microchip/TCPIP Stack/DynDNS.c" "../../../Microchip/TCPIP Stack/ENC28J60.c" "../../../Microchip/TCPIP Stack/ENCX24J600.c" "../../../Microchip/TCPIP Stack/ETH97J60.c" "../../../Microchip/TCPIP Stack/FTP.c" "../../../Microchip/TCPIP Stack/Hashes.c" "../../../Microchip/TCPIP Stack/Helpers.c" "../../../Microchip/TCPIP Stack/HTTP2.c" "../../../Microchip/TCPIP Stack/ICMP.c" "../../../Microchip/TCPIP Stack/IP.c" "../../../Microchip/TCPIP Stack/LCDBlocking.c" "../../../Microchip/TCPIP Stack/MPFS2.c" "../../../Microchip/TCPIP Stack/NBNS.c" "../../../Microchip/TCPIP Stack/Reboot.c" "../../../Microchip/TCPIP Stack/SMTP.c" "../../../Microchip/TCPIP Stack/SNMP.c" "../../../Microchip/TCPIP Stack/SNTP.c" "../../../Microchip/TCPIP Stack/SPIEEPROM.c" "../../../Microchip/TCPIP Stack/SPIFlash.c" "../../../Microchip/TCPIP Stack/SPIRAM.c" "../../../Microchip/TCPIP Stack/StackTsk.c" "../../../Microchip/TCPIP Stack/TCP.c" "../../../Microchip/TCPIP Stack/TCPPerformanceTest.c" "../../../Microchip/TCPIP Stack/Telnet.c" "../../../Microchip/TCPIP Stack/TFTPc.c" "../../../Microchip/TCPIP Stack/Tick.c" "../../../Microchip/TCPIP Stack/UART2TCPBridge.c" "../../../Microchip/TCPIP Stack/UART.c" "../../../Microchip/TCPIP Stack/UDP.c" "../../../Microchip/TCPIP Stack/UDPPerformanceTest.c" ../CustomHTTPApp.c ../CustomSNMPApp.c ../MainDemo.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/401580201/Custom_I2C.o ${OBJECTDIR}/_ext/401580201/Custom_I2C_Low.o ${OBJECTDIR}/_ext/401580201/Custom_SPI.o ${OBJECTDIR}/_ext/401580201/Custom_SPI_Low.o ${OBJECTDIR}/_ext/401580201/Custom_UART.o ${OBJECTDIR}/_ext/401580201/Custom_UART_Low.o ${OBJECTDIR}/_ext/401580201/Misc_Functions.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1954962658/DNSs.o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/ETH97J60.o ${OBJECTDIR}/_ext/1954962658/FTP.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/ICMP.o ${OBJECTDIR}/_ext/1954962658/IP.o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/1954962658/SMTP.o ${OBJECTDIR}/_ext/1954962658/SNMP.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ${OBJECTDIR}/_ext/1472/MainDemo.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d ${OBJECTDIR}/_ext/1472/PingDemo.o.d ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d ${OBJECTDIR}/_ext/1472/UARTConfig.o.d ${OBJECTDIR}/_ext/401580201/Custom_I2C.o.d ${OBJECTDIR}/_ext/401580201/Custom_I2C_Low.o.d ${OBJECTDIR}/_ext/401580201/Custom_SPI.o.d ${OBJECTDIR}/_ext/401580201/Custom_SPI_Low.o.d ${OBJECTDIR}/_ext/401580201/Custom_UART.o.d ${OBJECTDIR}/_ext/401580201/Custom_UART_Low.o.d ${OBJECTDIR}/_ext/401580201/Misc_Functions.o.d ${OBJECTDIR}/_ext/1954962658/Announce.o.d ${OBJECTDIR}/_ext/1954962658/ARP.o.d ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d ${OBJECTDIR}/_ext/1954962658/Delay.o.d ${OBJECTDIR}/_ext/1954962658/DHCP.o.d ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d ${OBJECTDIR}/_ext/1954962658/DNS.o.d ${OBJECTDIR}/_ext/1954962658/DNSs.o.d ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d ${OBJECTDIR}/_ext/1954962658/ETH97J60.o.d ${OBJECTDIR}/_ext/1954962658/FTP.o.d ${OBJECTDIR}/_ext/1954962658/Hashes.o.d ${OBJECTDIR}/_ext/1954962658/Helpers.o.d ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d ${OBJECTDIR}/_ext/1954962658/ICMP.o.d ${OBJECTDIR}/_ext/1954962658/IP.o.d ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d ${OBJECTDIR}/_ext/1954962658/NBNS.o.d ${OBJECTDIR}/_ext/1954962658/Reboot.o.d ${OBJECTDIR}/_ext/1954962658/SMTP.o.d ${OBJECTDIR}/_ext/1954962658/SNMP.o.d ${OBJECTDIR}/_ext/1954962658/SNTP.o.d ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d ${OBJECTDIR}/_ext/1954962658/TCP.o.d ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d ${OBJECTDIR}/_ext/1954962658/Telnet.o.d ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d ${OBJECTDIR}/_ext/1954962658/Tick.o.d ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d ${OBJECTDIR}/_ext/1954962658/UART.o.d ${OBJECTDIR}/_ext/1954962658/UDP.o.d ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d ${OBJECTDIR}/_ext/1472/MainDemo.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/401580201/Custom_I2C.o ${OBJECTDIR}/_ext/401580201/Custom_I2C_Low.o ${OBJECTDIR}/_ext/401580201/Custom_SPI.o ${OBJECTDIR}/_ext/401580201/Custom_SPI_Low.o ${OBJECTDIR}/_ext/401580201/Custom_UART.o ${OBJECTDIR}/_ext/401580201/Custom_UART_Low.o ${OBJECTDIR}/_ext/401580201/Misc_Functions.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1954962658/DNSs.o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/ETH97J60.o ${OBJECTDIR}/_ext/1954962658/FTP.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/ICMP.o ${OBJECTDIR}/_ext/1954962658/IP.o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/1954962658/SMTP.o ${OBJECTDIR}/_ext/1954962658/SNMP.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ${OBJECTDIR}/_ext/1472/MainDemo.o

# Source Files
SOURCEFILES=../BerkeleyTCPClientDemo.c ../BerkeleyTCPServerDemo.c ../BerkeleyUDPClientDemo.c ../GenericTCPClient.c ../GenericTCPServer.c ../PingDemo.c ../SMTPDemo.c ../UARTConfig.c ../Olimex_Demo_Files/Custom_I2C.c ../Olimex_Demo_Files/Custom_I2C_Low.c ../Olimex_Demo_Files/Custom_SPI.c ../Olimex_Demo_Files/Custom_SPI_Low.c ../Olimex_Demo_Files/Custom_UART.c ../Olimex_Demo_Files/Custom_UART_Low.c ../Olimex_Demo_Files/Misc_Functions.c ../../../Microchip/TCPIP Stack/Announce.c ../../../Microchip/TCPIP Stack/ARP.c ../../../Microchip/TCPIP Stack/AutoIP.c ../../../Microchip/TCPIP Stack/BerkeleyAPI.c ../../../Microchip/TCPIP Stack/Delay.c ../../../Microchip/TCPIP Stack/DHCP.c ../../../Microchip/TCPIP Stack/DHCPs.c ../../../Microchip/TCPIP Stack/DNS.c ../../../Microchip/TCPIP Stack/DNSs.c ../../../Microchip/TCPIP Stack/DynDNS.c ../../../Microchip/TCPIP Stack/ENC28J60.c ../../../Microchip/TCPIP Stack/ENCX24J600.c ../../../Microchip/TCPIP Stack/ETH97J60.c ../../../Microchip/TCPIP Stack/FTP.c ../../../Microchip/TCPIP Stack/Hashes.c ../../../Microchip/TCPIP Stack/Helpers.c ../../../Microchip/TCPIP Stack/HTTP2.c ../../../Microchip/TCPIP Stack/ICMP.c ../../../Microchip/TCPIP Stack/IP.c ../../../Microchip/TCPIP Stack/LCDBlocking.c ../../../Microchip/TCPIP Stack/MPFS2.c ../../../Microchip/TCPIP Stack/NBNS.c ../../../Microchip/TCPIP Stack/Reboot.c ../../../Microchip/TCPIP Stack/SMTP.c ../../../Microchip/TCPIP Stack/SNMP.c ../../../Microchip/TCPIP Stack/SNTP.c ../../../Microchip/TCPIP Stack/SPIEEPROM.c ../../../Microchip/TCPIP Stack/SPIFlash.c ../../../Microchip/TCPIP Stack/SPIRAM.c ../../../Microchip/TCPIP Stack/StackTsk.c ../../../Microchip/TCPIP Stack/TCP.c ../../../Microchip/TCPIP Stack/TCPPerformanceTest.c ../../../Microchip/TCPIP Stack/Telnet.c ../../../Microchip/TCPIP Stack/TFTPc.c ../../../Microchip/TCPIP Stack/Tick.c ../../../Microchip/TCPIP Stack/UART2TCPBridge.c ../../../Microchip/TCPIP Stack/UART.c ../../../Microchip/TCPIP Stack/UDP.c ../../../Microchip/TCPIP Stack/UDPPerformanceTest.c ../CustomHTTPApp.c ../CustomSNMPApp.c ../MainDemo.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PIC-WEB_5.42_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F67J60
MP_PROCESSOR_OPTION_LD=18f67j60
MP_LINKER_DEBUG_OPTION=  -u_DEBUGSTACK
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o   ../BerkeleyTCPClientDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o   ../BerkeleyTCPServerDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o   ../BerkeleyUDPClientDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/GenericTCPClient.o   ../GenericTCPClient.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/GenericTCPClient.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/GenericTCPServer.o   ../GenericTCPServer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/GenericTCPServer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/PingDemo.o   ../PingDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/PingDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/PingDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/SMTPDemo.o   ../SMTPDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/SMTPDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SMTPDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/UARTConfig.o   ../UARTConfig.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/UARTConfig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/401580201/Custom_I2C.o: ../Olimex_Demo_Files/Custom_I2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/401580201" 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_I2C.o.d 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_I2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/401580201/Custom_I2C.o   ../Olimex_Demo_Files/Custom_I2C.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/401580201/Custom_I2C.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/401580201/Custom_I2C.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/401580201/Custom_I2C_Low.o: ../Olimex_Demo_Files/Custom_I2C_Low.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/401580201" 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_I2C_Low.o.d 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_I2C_Low.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/401580201/Custom_I2C_Low.o   ../Olimex_Demo_Files/Custom_I2C_Low.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/401580201/Custom_I2C_Low.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/401580201/Custom_I2C_Low.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/401580201/Custom_SPI.o: ../Olimex_Demo_Files/Custom_SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/401580201" 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_SPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_SPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/401580201/Custom_SPI.o   ../Olimex_Demo_Files/Custom_SPI.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/401580201/Custom_SPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/401580201/Custom_SPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/401580201/Custom_SPI_Low.o: ../Olimex_Demo_Files/Custom_SPI_Low.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/401580201" 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_SPI_Low.o.d 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_SPI_Low.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/401580201/Custom_SPI_Low.o   ../Olimex_Demo_Files/Custom_SPI_Low.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/401580201/Custom_SPI_Low.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/401580201/Custom_SPI_Low.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/401580201/Custom_UART.o: ../Olimex_Demo_Files/Custom_UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/401580201" 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/401580201/Custom_UART.o   ../Olimex_Demo_Files/Custom_UART.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/401580201/Custom_UART.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/401580201/Custom_UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/401580201/Custom_UART_Low.o: ../Olimex_Demo_Files/Custom_UART_Low.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/401580201" 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_UART_Low.o.d 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_UART_Low.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/401580201/Custom_UART_Low.o   ../Olimex_Demo_Files/Custom_UART_Low.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/401580201/Custom_UART_Low.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/401580201/Custom_UART_Low.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/401580201/Misc_Functions.o: ../Olimex_Demo_Files/Misc_Functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/401580201" 
	@${RM} ${OBJECTDIR}/_ext/401580201/Misc_Functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/401580201/Misc_Functions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/401580201/Misc_Functions.o   ../Olimex_Demo_Files/Misc_Functions.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/401580201/Misc_Functions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/401580201/Misc_Functions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Announce.o   "../../../Microchip/TCPIP Stack/Announce.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Announce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ARP.o   "../../../Microchip/TCPIP Stack/ARP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ARP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ARP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/AutoIP.o   "../../../Microchip/TCPIP Stack/AutoIP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/AutoIP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o   "../../../Microchip/TCPIP Stack/BerkeleyAPI.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Delay.o   "../../../Microchip/TCPIP Stack/Delay.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DHCP.o   "../../../Microchip/TCPIP Stack/DHCP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DHCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DHCPs.o   "../../../Microchip/TCPIP Stack/DHCPs.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DHCPs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DNS.o   "../../../Microchip/TCPIP Stack/DNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DNSs.o   "../../../Microchip/TCPIP Stack/DNSs.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DNSs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DynDNS.o   "../../../Microchip/TCPIP Stack/DynDNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DynDNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DynDNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ENC28J60.o   "../../../Microchip/TCPIP Stack/ENC28J60.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ENC28J60.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o   "../../../Microchip/TCPIP Stack/ENCX24J600.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/ETH97J60.o: ../../../Microchip/TCPIP\ Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ETH97J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ETH97J60.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ETH97J60.o   "../../../Microchip/TCPIP Stack/ETH97J60.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ETH97J60.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ETH97J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/FTP.o   "../../../Microchip/TCPIP Stack/FTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/FTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/FTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Hashes.o   "../../../Microchip/TCPIP Stack/Hashes.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Hashes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Helpers.o   "../../../Microchip/TCPIP Stack/Helpers.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/HTTP2.o   "../../../Microchip/TCPIP Stack/HTTP2.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/HTTP2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ICMP.o   "../../../Microchip/TCPIP Stack/ICMP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ICMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/IP.o   "../../../Microchip/TCPIP Stack/IP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/IP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/IP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o   "../../../Microchip/TCPIP Stack/LCDBlocking.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/MPFS2.o   "../../../Microchip/TCPIP Stack/MPFS2.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/MPFS2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/NBNS.o   "../../../Microchip/TCPIP Stack/NBNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/NBNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Reboot.o   "../../../Microchip/TCPIP Stack/Reboot.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Reboot.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SMTP.o   "../../../Microchip/TCPIP Stack/SMTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SMTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SMTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SNMP.o   "../../../Microchip/TCPIP Stack/SNMP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SNMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SNTP.o   "../../../Microchip/TCPIP Stack/SNTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SNTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o   "../../../Microchip/TCPIP Stack/SPIEEPROM.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIFlash.o   "../../../Microchip/TCPIP Stack/SPIFlash.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SPIFlash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIRAM.o   "../../../Microchip/TCPIP Stack/SPIRAM.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SPIRAM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/StackTsk.o   "../../../Microchip/TCPIP Stack/StackTsk.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/StackTsk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TCP.o   "../../../Microchip/TCPIP Stack/TCP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/TCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o   "../../../Microchip/TCPIP Stack/TCPPerformanceTest.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Telnet.o   "../../../Microchip/TCPIP Stack/Telnet.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Telnet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TFTPc.o   "../../../Microchip/TCPIP Stack/TFTPc.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/TFTPc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TFTPc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Tick.o   "../../../Microchip/TCPIP Stack/Tick.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Tick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o   "../../../Microchip/TCPIP Stack/UART2TCPBridge.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UART.o   "../../../Microchip/TCPIP Stack/UART.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/UART.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UDP.o   "../../../Microchip/TCPIP Stack/UDP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/UDP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UDP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o   "../../../Microchip/TCPIP Stack/UDPPerformanceTest.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o   ../CustomHTTPApp.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o   ../CustomSNMPApp.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/MainDemo.o   ../MainDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/MainDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o   ../BerkeleyTCPClientDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o   ../BerkeleyTCPServerDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o   ../BerkeleyUDPClientDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/GenericTCPClient.o   ../GenericTCPClient.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/GenericTCPClient.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/GenericTCPServer.o   ../GenericTCPServer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/GenericTCPServer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/PingDemo.o   ../PingDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/PingDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/PingDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/SMTPDemo.o   ../SMTPDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/SMTPDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SMTPDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/UARTConfig.o   ../UARTConfig.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/UARTConfig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/401580201/Custom_I2C.o: ../Olimex_Demo_Files/Custom_I2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/401580201" 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_I2C.o.d 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_I2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/401580201/Custom_I2C.o   ../Olimex_Demo_Files/Custom_I2C.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/401580201/Custom_I2C.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/401580201/Custom_I2C.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/401580201/Custom_I2C_Low.o: ../Olimex_Demo_Files/Custom_I2C_Low.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/401580201" 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_I2C_Low.o.d 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_I2C_Low.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/401580201/Custom_I2C_Low.o   ../Olimex_Demo_Files/Custom_I2C_Low.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/401580201/Custom_I2C_Low.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/401580201/Custom_I2C_Low.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/401580201/Custom_SPI.o: ../Olimex_Demo_Files/Custom_SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/401580201" 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_SPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_SPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/401580201/Custom_SPI.o   ../Olimex_Demo_Files/Custom_SPI.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/401580201/Custom_SPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/401580201/Custom_SPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/401580201/Custom_SPI_Low.o: ../Olimex_Demo_Files/Custom_SPI_Low.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/401580201" 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_SPI_Low.o.d 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_SPI_Low.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/401580201/Custom_SPI_Low.o   ../Olimex_Demo_Files/Custom_SPI_Low.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/401580201/Custom_SPI_Low.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/401580201/Custom_SPI_Low.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/401580201/Custom_UART.o: ../Olimex_Demo_Files/Custom_UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/401580201" 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/401580201/Custom_UART.o   ../Olimex_Demo_Files/Custom_UART.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/401580201/Custom_UART.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/401580201/Custom_UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/401580201/Custom_UART_Low.o: ../Olimex_Demo_Files/Custom_UART_Low.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/401580201" 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_UART_Low.o.d 
	@${RM} ${OBJECTDIR}/_ext/401580201/Custom_UART_Low.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/401580201/Custom_UART_Low.o   ../Olimex_Demo_Files/Custom_UART_Low.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/401580201/Custom_UART_Low.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/401580201/Custom_UART_Low.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/401580201/Misc_Functions.o: ../Olimex_Demo_Files/Misc_Functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/401580201" 
	@${RM} ${OBJECTDIR}/_ext/401580201/Misc_Functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/401580201/Misc_Functions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/401580201/Misc_Functions.o   ../Olimex_Demo_Files/Misc_Functions.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/401580201/Misc_Functions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/401580201/Misc_Functions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Announce.o   "../../../Microchip/TCPIP Stack/Announce.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Announce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ARP.o   "../../../Microchip/TCPIP Stack/ARP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ARP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ARP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/AutoIP.o   "../../../Microchip/TCPIP Stack/AutoIP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/AutoIP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o   "../../../Microchip/TCPIP Stack/BerkeleyAPI.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Delay.o   "../../../Microchip/TCPIP Stack/Delay.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DHCP.o   "../../../Microchip/TCPIP Stack/DHCP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DHCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DHCPs.o   "../../../Microchip/TCPIP Stack/DHCPs.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DHCPs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DNS.o   "../../../Microchip/TCPIP Stack/DNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DNSs.o   "../../../Microchip/TCPIP Stack/DNSs.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DNSs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/DynDNS.o   "../../../Microchip/TCPIP Stack/DynDNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DynDNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DynDNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ENC28J60.o   "../../../Microchip/TCPIP Stack/ENC28J60.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ENC28J60.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o   "../../../Microchip/TCPIP Stack/ENCX24J600.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/ETH97J60.o: ../../../Microchip/TCPIP\ Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ETH97J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ETH97J60.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ETH97J60.o   "../../../Microchip/TCPIP Stack/ETH97J60.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ETH97J60.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ETH97J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/FTP.o   "../../../Microchip/TCPIP Stack/FTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/FTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/FTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Hashes.o   "../../../Microchip/TCPIP Stack/Hashes.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Hashes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Helpers.o   "../../../Microchip/TCPIP Stack/Helpers.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/HTTP2.o   "../../../Microchip/TCPIP Stack/HTTP2.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/HTTP2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/ICMP.o   "../../../Microchip/TCPIP Stack/ICMP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ICMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/IP.o   "../../../Microchip/TCPIP Stack/IP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/IP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/IP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o   "../../../Microchip/TCPIP Stack/LCDBlocking.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/MPFS2.o   "../../../Microchip/TCPIP Stack/MPFS2.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/MPFS2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/NBNS.o   "../../../Microchip/TCPIP Stack/NBNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/NBNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Reboot.o   "../../../Microchip/TCPIP Stack/Reboot.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Reboot.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SMTP.o   "../../../Microchip/TCPIP Stack/SMTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SMTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SMTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SNMP.o   "../../../Microchip/TCPIP Stack/SNMP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SNMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SNTP.o   "../../../Microchip/TCPIP Stack/SNTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SNTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o   "../../../Microchip/TCPIP Stack/SPIEEPROM.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIFlash.o   "../../../Microchip/TCPIP Stack/SPIFlash.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SPIFlash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/SPIRAM.o   "../../../Microchip/TCPIP Stack/SPIRAM.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SPIRAM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/StackTsk.o   "../../../Microchip/TCPIP Stack/StackTsk.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/StackTsk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TCP.o   "../../../Microchip/TCPIP Stack/TCP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/TCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o   "../../../Microchip/TCPIP Stack/TCPPerformanceTest.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Telnet.o   "../../../Microchip/TCPIP Stack/Telnet.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Telnet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/TFTPc.o   "../../../Microchip/TCPIP Stack/TFTPc.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/TFTPc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TFTPc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Tick.o   "../../../Microchip/TCPIP Stack/Tick.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Tick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o   "../../../Microchip/TCPIP Stack/UART2TCPBridge.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UART.o   "../../../Microchip/TCPIP Stack/UART.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/UART.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UDP.o   "../../../Microchip/TCPIP Stack/UDP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/UDP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UDP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o   "../../../Microchip/TCPIP Stack/UDPPerformanceTest.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o   ../CustomHTTPApp.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o   ../CustomSNMPApp.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -w3 -DBOARD_OLIMEX_PIC_WEB -I"../Olimex_Demo_Files" -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"." -ml -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/MainDemo.o   ../MainDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/MainDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PIC-WEB_5.42_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../18f67j60.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "..\18f67j60.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"$(BINDIR_)$(TARGETBASE).map" -w -l".." -l"."  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC-WEB_5.42_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/PIC-WEB_5.42_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../18f67j60.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "..\18f67j60.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"$(BINDIR_)$(TARGETBASE).map" -w -l".." -l"."  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC-WEB_5.42_Demo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
