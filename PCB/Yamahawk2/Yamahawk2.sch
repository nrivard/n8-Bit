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
P 2100 3000
F 0 "#PWR0101" H 2100 2850 50  0001 C CNN
F 1 "+5V" H 1975 3050 50  0000 C CNN
F 2 "" H 2100 3000 50  0001 C CNN
F 3 "" H 2100 3000 50  0001 C CNN
	1    2100 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 604CA2D6
P 2100 4500
F 0 "#PWR0102" H 2100 4250 50  0001 C CNN
F 1 "GND" H 2200 4500 50  0000 C CNN
F 2 "" H 2100 4500 50  0001 C CNN
F 3 "" H 2100 4500 50  0001 C CNN
	1    2100 4500
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
P 950 4500
F 0 "#PWR0103" H 950 4350 50  0001 C CNN
F 1 "+5V" H 1075 4550 50  0000 C CNN
F 2 "" H 950 4500 50  0001 C CNN
F 3 "" H 950 4500 50  0001 C CNN
	1    950  4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 604CB0E8
P 950 2850
F 0 "#PWR0104" H 950 2600 50  0001 C CNN
F 1 "GND" H 775 2800 50  0000 C CNN
F 2 "" H 950 2850 50  0001 C CNN
F 3 "" H 950 2850 50  0001 C CNN
	1    950  2850
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
	1075 4300 975  4200
Entry Wire Line
	1075 4200 975  4100
Entry Wire Line
	1075 4100 975  4000
Entry Wire Line
	1075 4000 975  3900
Entry Wire Line
	1075 3900 975  3800
Entry Wire Line
	1075 3800 975  3700
Entry Wire Line
	1075 3700 975  3600
Entry Wire Line
	1075 3600 975  3500
Wire Wire Line
	1275 4300 1075 4300
Wire Wire Line
	1275 4200 1075 4200
Wire Wire Line
	1275 4100 1075 4100
Wire Wire Line
	1275 4000 1075 4000
Wire Wire Line
	1275 3900 1075 3900
Wire Wire Line
	1275 3800 1075 3800
Wire Wire Line
	1275 3700 1075 3700
Wire Wire Line
	1275 3600 1075 3600
Text Label 1250 4300 2    50   ~ 0
D0
Text Label 1250 4200 2    50   ~ 0
D1
Text Label 1250 4100 2    50   ~ 0
D2
Text Label 1250 4000 2    50   ~ 0
D3
Text Label 1250 3900 2    50   ~ 0
D4
Text Label 1250 3800 2    50   ~ 0
D5
Text Label 1250 3700 2    50   ~ 0
D6
Text Label 1250 3600 2    50   ~ 0
D7
Entry Wire Line
	2125 4400 2025 4300
Entry Wire Line
	2125 4300 2025 4200
Entry Wire Line
	2125 4200 2025 4100
Entry Wire Line
	2125 4100 2025 4000
Entry Wire Line
	2125 4000 2025 3900
Entry Wire Line
	2125 3900 2025 3800
Wire Wire Line
	1775 4300 2025 4300
Wire Wire Line
	1775 4200 2025 4200
Wire Wire Line
	1775 4100 2025 4100
Wire Wire Line
	1775 4000 2025 4000
Wire Wire Line
	1775 3900 2025 3900
Wire Wire Line
	1775 3800 2025 3800
Text Label 1925 4300 2    50   ~ 0
A0
Text Label 1925 4200 2    50   ~ 0
A1
Text Label 1925 4100 2    50   ~ 0
A2
Text Label 1925 4000 2    50   ~ 0
A3
Text Label 1925 3900 2    50   ~ 0
A4
Text Label 1925 3800 2    50   ~ 0
A5
Text GLabel 1100 3075 0    50   Output ~ 0
~WRITE
Text GLabel 1100 3225 0    50   Output ~ 0
~READ
Wire Wire Line
	1275 3300 1125 3300
Wire Wire Line
	1275 3200 1125 3200
Text GLabel 1100 3375 0    50   Output ~ 0
~NMI
Text GLabel 900  3475 0    50   Output ~ 0
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
	1050 3000 1275 3000
Wire Wire Line
	1050 3000 1050 2850
Wire Wire Line
	1050 2850 950  2850
Wire Wire Line
	1850 3125 1900 3125
Wire Wire Line
	1850 3200 1850 3125
Wire Wire Line
	1775 3200 1850 3200
Wire Wire Line
	1900 3300 1900 3225
Wire Wire Line
	1775 3300 1900 3300
Text GLabel 1900 3125 2    50   BiDi ~ 0
FUTURE1
Text GLabel 1900 3225 2    50   BiDi ~ 0
FUTURE0
Wire Wire Line
	1875 3350 2100 3350
Wire Wire Line
	1875 3400 1875 3350
Wire Wire Line
	1775 3400 1875 3400
Text GLabel 2100 3350 2    50   Input ~ 0
~RES
Wire Wire Line
	1825 3475 2100 3475
Wire Wire Line
	1825 3500 1825 3475
Wire Wire Line
	1775 3500 1825 3500
Wire Wire Line
	1775 3600 2100 3600
Wire Wire Line
	2025 3700 2025 3750
Text GLabel 2100 3475 2    50   Input ~ 0
CLK
Text GLabel 2100 3600 2    50   Input ~ 0
R~W
Text GLabel 2100 3750 2    50   Input ~ 0
~CS
Wire Wire Line
	1775 3700 2025 3700
Wire Wire Line
	2025 3750 2100 3750
Wire Wire Line
	1125 3200 1125 3075
Wire Wire Line
	1125 3075 1100 3075
Wire Wire Line
	1125 3300 1125 3225
Wire Wire Line
	1125 3225 1100 3225
Wire Wire Line
	1275 3500 1050 3500
Wire Wire Line
	1050 3500 1050 3475
Wire Wire Line
	1050 3475 900  3475
Wire Wire Line
	1275 3400 1200 3400
Wire Wire Line
	1200 3400 1200 3375
Wire Wire Line
	1200 3375 1100 3375
Wire Bus Line
	975  3500 975  4200
Wire Bus Line
	2125 3900 2125 4400
$EndSCHEMATC
