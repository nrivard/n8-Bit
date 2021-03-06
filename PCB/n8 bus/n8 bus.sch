EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x16_Odd_Even J1
U 1 1 604C03AC
P 1475 3700
F 0 "J1" H 1525 4617 50  0000 C CNN
F 1 "n8 Bus Connector" H 1525 4526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x16_P2.54mm_Horizontal" H 1475 3700 50  0001 C CNN
F 3 "~" H 1475 3700 50  0001 C CNN
	1    1475 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 604C9E8F
P 925 3000
F 0 "#PWR0101" H 925 2850 50  0001 C CNN
F 1 "+5V" H 800 3050 50  0000 C CNN
F 2 "" H 925 3000 50  0001 C CNN
F 3 "" H 925 3000 50  0001 C CNN
	1    925  3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 604CA2D6
P 950 4500
F 0 "#PWR0102" H 950 4250 50  0001 C CNN
F 1 "GND" H 800 4450 50  0000 C CNN
F 2 "" H 950 4500 50  0001 C CNN
F 3 "" H 950 4500 50  0001 C CNN
	1    950  4500
	1    0    0    -1  
$EndComp
Connection ~ 1275 3000
Wire Wire Line
	1275 3000 1775 3000
Wire Wire Line
	950  4500 1175 4500
Connection ~ 1275 4500
Wire Wire Line
	1275 4500 1775 4500
$Comp
L power:+5V #PWR0103
U 1 1 604CB07B
P 2100 4500
F 0 "#PWR0103" H 2100 4350 50  0001 C CNN
F 1 "+5V" H 2225 4550 50  0000 C CNN
F 2 "" H 2100 4500 50  0001 C CNN
F 3 "" H 2100 4500 50  0001 C CNN
	1    2100 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 604CB0E8
P 2100 3000
F 0 "#PWR0104" H 2100 2750 50  0001 C CNN
F 1 "GND" H 2250 2950 50  0000 C CNN
F 2 "" H 2100 3000 50  0001 C CNN
F 3 "" H 2100 3000 50  0001 C CNN
	1    2100 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1275 4400 1775 4400
Connection ~ 1775 4400
Wire Wire Line
	1775 4400 1850 4400
Wire Wire Line
	1275 3100 1775 3100
Connection ~ 1775 3100
Wire Wire Line
	1775 3100 1850 3100
Wire Wire Line
	1850 3100 1850 3000
Wire Wire Line
	1850 4400 1850 4500
Wire Wire Line
	1850 4500 1975 4500
Entry Wire Line
	1975 3200 2075 3300
Entry Wire Line
	1975 3300 2075 3400
Entry Wire Line
	1975 3400 2075 3500
Entry Wire Line
	1975 3500 2075 3600
Entry Wire Line
	1975 3600 2075 3700
Entry Wire Line
	1975 3700 2075 3800
Entry Wire Line
	1975 3800 2075 3900
Entry Wire Line
	1975 3900 2075 4000
Wire Wire Line
	1775 3200 1975 3200
Wire Wire Line
	1775 3300 1975 3300
Wire Wire Line
	1775 3400 1975 3400
Wire Wire Line
	1775 3500 1975 3500
Wire Wire Line
	1775 3600 1975 3600
Wire Wire Line
	1775 3700 1975 3700
Wire Wire Line
	1775 3800 1975 3800
Wire Wire Line
	1775 3900 1975 3900
Text Label 1800 3200 0    50   ~ 0
D0
Text Label 1800 3300 0    50   ~ 0
D1
Text Label 1800 3400 0    50   ~ 0
D2
Text Label 1800 3500 0    50   ~ 0
D3
Text Label 1800 3600 0    50   ~ 0
D4
Text Label 1800 3700 0    50   ~ 0
D5
Text Label 1800 3800 0    50   ~ 0
D6
Text Label 1800 3900 0    50   ~ 0
D7
Entry Wire Line
	925  3100 1025 3200
Entry Wire Line
	925  3200 1025 3300
Entry Wire Line
	925  3300 1025 3400
Entry Wire Line
	925  3400 1025 3500
Entry Wire Line
	925  3500 1025 3600
Entry Wire Line
	925  3600 1025 3700
Wire Wire Line
	1275 3200 1025 3200
Wire Wire Line
	1275 3300 1025 3300
Wire Wire Line
	1275 3400 1025 3400
Wire Wire Line
	1275 3500 1025 3500
Wire Wire Line
	1275 3600 1025 3600
Wire Wire Line
	1275 3700 1025 3700
Text Label 1125 3200 0    50   ~ 0
A0
Text Label 1125 3300 0    50   ~ 0
A1
Text Label 1125 3400 0    50   ~ 0
A2
Text Label 1125 3500 0    50   ~ 0
A3
Text Label 1125 3600 0    50   ~ 0
A4
Text Label 1125 3700 0    50   ~ 0
A5
Text GLabel 950  3750 0    50   Input ~ 0
~CS
Text GLabel 950  3900 0    50   Input ~ 0
R~W
Text GLabel 950  4025 0    50   Input ~ 0
CLK
Wire Wire Line
	1275 3800 1225 3800
Wire Wire Line
	1225 3800 1225 3750
Wire Wire Line
	1225 3750 950  3750
Wire Wire Line
	1275 3900 950  3900
Wire Wire Line
	1275 4000 1225 4000
Wire Wire Line
	1225 4000 1225 4025
Wire Wire Line
	1225 4025 950  4025
Text GLabel 950  4150 0    50   Input ~ 0
~RES
Wire Wire Line
	1275 4100 1175 4100
Wire Wire Line
	1175 4100 1175 4150
Wire Wire Line
	1175 4150 950  4150
Text GLabel 1150 4275 0    50   BiDi ~ 0
FUTURE0
Text GLabel 1150 4375 0    50   BiDi ~ 0
FUTURE1
Wire Wire Line
	1275 4200 1150 4200
Wire Wire Line
	1150 4200 1150 4275
Wire Wire Line
	1275 4300 1200 4300
Wire Wire Line
	1200 4300 1200 4375
Wire Wire Line
	1200 4375 1150 4375
Text GLabel 1925 4300 2    50   BiDi ~ 0
USB_D-
Text GLabel 1925 4200 2    50   BiDi ~ 0
USB_D+
Wire Wire Line
	1775 4200 1925 4200
Wire Wire Line
	1775 4300 1925 4300
Text GLabel 2125 4075 2    50   Output ~ 0
~NMI
Wire Wire Line
	1775 4100 2075 4100
Wire Wire Line
	2075 4100 2075 4075
Wire Wire Line
	2075 4075 2125 4075
Wire Wire Line
	1775 4000 1850 4000
Text GLabel 1850 4000 2    50   Output ~ 0
~IRQ
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 604E4120
P 1975 4500
F 0 "#FLG0101" H 1975 4575 50  0001 C CNN
F 1 "PWR_FLAG" H 1975 4673 50  0000 C CNN
F 2 "" H 1975 4500 50  0001 C CNN
F 3 "~" H 1975 4500 50  0001 C CNN
	1    1975 4500
	-1   0    0    1   
$EndComp
Connection ~ 1975 4500
Wire Wire Line
	1975 4500 2100 4500
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 604E505A
P 1175 4500
F 0 "#FLG0102" H 1175 4575 50  0001 C CNN
F 1 "PWR_FLAG" H 1175 4673 50  0000 C CNN
F 2 "" H 1175 4500 50  0001 C CNN
F 3 "~" H 1175 4500 50  0001 C CNN
	1    1175 4500
	-1   0    0    1   
$EndComp
Connection ~ 1175 4500
Wire Wire Line
	1175 4500 1275 4500
Wire Wire Line
	1850 3000 2100 3000
Wire Wire Line
	925  3000 1275 3000
Wire Bus Line
	925  3100 925  3600
Wire Bus Line
	2075 3300 2075 4000
$EndSCHEMATC
