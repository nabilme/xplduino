EESchema Schematic File Version 2  date 28/06/2012 23:43:20
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
LIBS:Small_connectors
LIBS:74hc08
LIBS:lm1117imp-3
LIBS:mp2562ds
LIBS:SMB-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 2 3
Title ""
Date "28 jun 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	7050 3300 6900 3300
Wire Wire Line
	5700 2300 5700 2950
Wire Wire Line
	5900 2800 5900 2850
Connection ~ 5250 2900
Wire Wire Line
	5000 2900 5600 2900
Wire Wire Line
	5600 2900 5600 2950
Wire Wire Line
	5950 4000 5950 4100
Wire Wire Line
	5850 3300 6400 3300
Wire Wire Line
	6350 3850 6350 3900
Wire Wire Line
	7300 3600 7300 3650
Connection ~ 6450 3200
Wire Wire Line
	6050 3050 5950 3050
Wire Wire Line
	5950 3050 5950 3100
Wire Wire Line
	5950 3100 5850 3100
Wire Wire Line
	5400 3800 5400 3900
Wire Notes Line
	11200 500  8400 500 
Wire Notes Line
	11200 500  11200 2150
Wire Notes Line
	11200 2150 8400 2150
Wire Notes Line
	8400 2150 8400 500 
Wire Wire Line
	8800 1700 8800 1800
Connection ~ 9100 1250
Wire Wire Line
	8800 1250 9200 1250
Connection ~ 10400 1300
Wire Wire Line
	10400 1200 10400 1350
Wire Wire Line
	10400 1750 10400 1850
Connection ~ 9950 1300
Wire Wire Line
	9500 1450 9500 1550
Wire Wire Line
	9800 1200 9950 1200
Wire Wire Line
	9950 1200 9950 1350
Wire Wire Line
	10400 1300 9800 1300
Wire Wire Line
	9950 1750 9950 1850
Wire Wire Line
	9100 1250 9100 1300
Wire Wire Line
	9100 1700 9100 1800
Wire Wire Line
	8800 1150 8800 1300
Connection ~ 8800 1250
Wire Wire Line
	5400 3300 5400 3200
Wire Wire Line
	5400 3200 5500 3200
Wire Wire Line
	5650 3550 5650 3850
Wire Wire Line
	5650 3850 5400 3850
Connection ~ 5400 3850
Wire Wire Line
	6450 3200 6450 3050
Connection ~ 7300 3200
Wire Wire Line
	8100 3600 8100 3650
Connection ~ 8100 3200
Wire Wire Line
	6350 3350 6350 3300
Connection ~ 6350 3300
Wire Wire Line
	5850 3200 7400 3200
Wire Wire Line
	5850 3500 5950 3500
Wire Wire Line
	5950 3500 5950 3600
Wire Wire Line
	5950 4600 5950 4650
Wire Wire Line
	5000 3400 5000 3500
Wire Wire Line
	5900 2400 5250 2400
Connection ~ 5700 2400
Wire Wire Line
	8250 3150 8250 3200
Wire Wire Line
	8250 3200 8000 3200
$Comp
L +5V #PWR?
U 1 1 4FECCEB6
P 7050 3300
F 0 "#PWR?" H 7050 3390 20  0001 C CNN
F 1 "+5V" H 7050 3390 30  0000 C CNN
	1    7050 3300
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 4FECCEAF
P 8250 3150
F 0 "#PWR?" H 8250 3240 20  0001 C CNN
F 1 "+5V" H 8250 3240 30  0000 C CNN
	1    8250 3150
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 4FECCB61
P 5700 2300
F 0 "#PWR?" H 5700 2250 20  0001 C CNN
F 1 "+12V" H 5700 2400 30  0000 C CNN
	1    5700 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4FECCB1F
P 5900 2850
F 0 "#PWR?" H 5900 2850 30  0001 C CNN
F 1 "GND" H 5900 2780 30  0001 C CNN
	1    5900 2850
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4FECCB10
P 5900 2600
F 0 "C?" H 5950 2700 50  0000 L CNN
F 1 "C" H 5950 2500 50  0000 L CNN
	1    5900 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4FECC9B9
P 5000 3500
F 0 "#PWR?" H 5000 3500 30  0001 C CNN
F 1 "GND" H 5000 3430 30  0001 C CNN
	1    5000 3500
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4FECC9AD
P 5000 3150
F 0 "R?" V 5080 3150 50  0000 C CNN
F 1 "R" V 5000 3150 50  0000 C CNN
	1    5000 3150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4FECC93E
P 5250 2650
F 0 "R?" V 5330 2650 50  0000 C CNN
F 1 "R" V 5250 2650 50  0000 C CNN
	1    5250 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4FECC91D
P 5950 4650
F 0 "#PWR?" H 5950 4650 30  0001 C CNN
F 1 "GND" H 5950 4580 30  0001 C CNN
	1    5950 4650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4FECC916
P 5950 4350
F 0 "R?" V 6030 4350 50  0000 C CNN
F 1 "158k" V 5950 4350 50  0000 C CNN
	1    5950 4350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4FECC90A
P 5950 3800
F 0 "C?" H 6000 3900 50  0000 L CNN
F 1 "150pF" H 6000 3700 50  0000 L CNN
	1    5950 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4FECC8D9
P 6350 3900
F 0 "#PWR?" H 6350 3900 30  0001 C CNN
F 1 "GND" H 6350 3830 30  0001 C CNN
	1    6350 3900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4FECC8C8
P 6350 3600
F 0 "R?" V 6430 3600 50  0000 C CNN
F 1 "R" V 6350 3600 50  0000 C CNN
	1    6350 3600
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4FECC898
P 6650 3300
F 0 "R?" V 6550 3200 50  0000 C CNN
F 1 "R" V 6650 3300 50  0000 C CNN
	1    6650 3300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 4FECC83A
P 7300 3650
F 0 "#PWR?" H 7300 3650 30  0001 C CNN
F 1 "GND" H 7300 3580 30  0001 C CNN
	1    7300 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4FECC837
P 8100 3650
F 0 "#PWR?" H 8100 3650 30  0001 C CNN
F 1 "GND" H 8100 3580 30  0001 C CNN
	1    8100 3650
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4FECC821
P 8100 3400
F 0 "C?" H 8150 3500 50  0000 L CNN
F 1 "22uF" H 8150 3300 50  0000 L CNN
	1    8100 3400
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L?
U 1 1 4FECC7CE
P 7700 3200
F 0 "L?" V 7650 3200 40  0000 C CNN
F 1 "15uH" V 7800 3200 40  0000 C CNN
	1    7700 3200
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D?
U 1 1 4FECC7AC
P 7300 3400
F 0 "D?" H 7300 3500 40  0000 C CNN
F 1 "DIODESCH" H 7300 3300 40  0000 C CNN
	1    7300 3400
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 4FECC757
P 6250 3050
F 0 "C?" H 6300 3150 50  0000 L CNN
F 1 "100nF" V 6300 2750 50  0000 L CNN
	1    6250 3050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 4FECC725
P 5400 3900
F 0 "#PWR?" H 5400 3900 30  0001 C CNN
F 1 "GND" H 5400 3830 30  0001 C CNN
	1    5400 3900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4FECC712
P 5400 3550
F 0 "R?" V 5480 3550 50  0000 C CNN
F 1 "200k" V 5400 3550 50  0000 C CNN
	1    5400 3550
	1    0    0    -1  
$EndComp
$Comp
L MP2562DS U?
U 1 1 4FECC5EE
P 5700 3100
F 0 "U?" H 5800 2600 60  0000 C CNN
F 1 "MP2562DS" H 6350 3400 60  0000 C CNN
	1    5700 3100
	1    0    0    -1  
$EndComp
Text Notes 9300 800  0    60   ~ 0
3.3V Rail
$Comp
L +5V #PWR201
U 1 1 4FDE4355
P 8800 1150
F 0 "#PWR201" H 8800 1240 20  0001 C CNN
F 1 "+5V" H 8800 1240 30  0000 C CNN
	1    8800 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR202
U 1 1 4FDE4338
P 8800 1800
F 0 "#PWR202" H 8800 1800 30  0001 C CNN
F 1 "GND" H 8800 1730 30  0001 C CNN
	1    8800 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR203
U 1 1 4FDE4335
P 9100 1800
F 0 "#PWR203" H 9100 1800 30  0001 C CNN
F 1 "GND" H 9100 1730 30  0001 C CNN
	1    9100 1800
	1    0    0    -1  
$EndComp
$Comp
L C C211
U 1 1 4FDE432E
P 8800 1500
F 0 "C211" H 8850 1600 50  0000 L CNN
F 1 "10nF" V 8900 1250 50  0000 L CNN
	1    8800 1500
	1    0    0    -1  
$EndComp
$Comp
L C C212
U 1 1 4FDE4326
P 9100 1500
F 0 "C212" H 9150 1600 50  0000 L CNN
F 1 "100nF" V 9200 1200 50  0000 L CNN
	1    9100 1500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR206
U 1 1 4FDE431B
P 10400 1200
F 0 "#PWR206" H 10400 1160 30  0001 C CNN
F 1 "+3.3V" H 10400 1310 30  0000 C CNN
	1    10400 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR207
U 1 1 4FDE4301
P 10400 1850
F 0 "#PWR207" H 10400 1850 30  0001 C CNN
F 1 "GND" H 10400 1780 30  0001 C CNN
	1    10400 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR205
U 1 1 4FDE42FD
P 9950 1850
F 0 "#PWR205" H 9950 1850 30  0001 C CNN
F 1 "GND" H 9950 1780 30  0001 C CNN
	1    9950 1850
	1    0    0    -1  
$EndComp
$Comp
L C C214
U 1 1 4FDE42E8
P 10400 1550
F 0 "C214" H 10450 1650 50  0000 L CNN
F 1 "100nF" V 10500 1250 50  0000 L CNN
	1    10400 1550
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C213
U 1 1 4FDE42D6
P 9950 1550
F 0 "C213" H 10000 1650 50  0000 L CNN
F 1 "10uF" V 10050 1250 50  0000 L CNN
	1    9950 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR204
U 1 1 4FDE42B3
P 9500 1550
F 0 "#PWR204" H 9500 1550 30  0001 C CNN
F 1 "GND" H 9500 1480 30  0001 C CNN
	1    9500 1550
	1    0    0    -1  
$EndComp
$Comp
L LM1117IMP-3.3 U202
U 1 1 4FDE429F
P 9500 1250
F 0 "U202" H 9950 1350 60  0000 C CNN
F 1 "LM1117IMP-3.3" H 9500 1450 60  0000 C CNN
	1    9500 1250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
