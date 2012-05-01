EESchema Schematic File Version 2  date 01/05/2012 18:36:30
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:hr911105_rj45
LIBS:SMB-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 2
Title ""
Date "1 may 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 4400 4750
Wire Wire Line
	4400 4850 4400 4650
Wire Wire Line
	4400 4650 4500 4650
Wire Wire Line
	4400 4750 4500 4750
$Comp
L GND #PWR101
U 1 1 4F9FC25F
P 4400 4850
F 0 "#PWR101" H 4400 4850 30  0001 C CNN
F 1 "GND" H 4400 4780 30  0001 C CNN
	1    4400 4850
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA168-P IC101
U 1 1 4F9FC24B
P 5500 3600
F 0 "IC101" H 4700 4900 50  0000 L BNN
F 1 "ATMEGA168-P" H 5650 2250 50  0000 L BNN
F 2 "DIL28" H 4800 2300 50  0001 C CNN
	1    5500 3600
	1    0    0    -1  
$EndComp
$Sheet
S 600  600  1200 700 
U 4F9D6DA9
F0 "Ethernet" 60
F1 "ethernet.sch" 60
$EndSheet
$EndSCHEMATC
