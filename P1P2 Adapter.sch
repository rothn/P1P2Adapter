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
Text GLabel 5550 3500 0    50   Input ~ 0
DIN
Text GLabel 5550 3600 0    50   Input ~ 0
RST
Text GLabel 5250 3400 0    50   Output ~ 0
DOUT
$Comp
L power:GND #PWR07
U 1 1 6135E68A
P 6350 4200
F 0 "#PWR07" H 6350 3950 50  0001 C CNN
F 1 "GND" V 6355 4072 50  0000 R CNN
F 2 "" H 6350 4200 50  0001 C CNN
F 3 "" H 6350 4200 50  0001 C CNN
	1    6350 4200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6135FC12
P 5550 4200
F 0 "#PWR03" H 5550 3950 50  0001 C CNN
F 1 "GND" V 5555 4072 50  0000 R CNN
F 2 "" H 5550 4200 50  0001 C CNN
F 3 "" H 5550 4200 50  0001 C CNN
	1    5550 4200
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 61362F78
P 6350 4100
F 0 "#PWR06" H 6350 3950 50  0001 C CNN
F 1 "+5V" V 6365 4228 50  0000 L CNN
F 2 "" H 6350 4100 50  0001 C CNN
F 3 "" H 6350 4100 50  0001 C CNN
	1    6350 4100
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR05
U 1 1 61364387
P 6350 4000
F 0 "#PWR05" H 6350 3850 50  0001 C CNN
F 1 "+12V" V 6365 4128 50  0000 L CNN
F 2 "" H 6350 4000 50  0001 C CNN
F 3 "" H 6350 4000 50  0001 C CNN
	1    6350 4000
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 6136511B
P 4900 3750
F 0 "C3" H 5015 3796 50  0000 L CNN
F 1 "100n" H 5015 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4938 3600 50  0001 C CNN
F 3 "~" H 4900 3750 50  0001 C CNN
	1    4900 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3600 5250 3600
Wire Wire Line
	5250 3600 5250 3700
Wire Wire Line
	5250 3700 5550 3700
Wire Wire Line
	5550 3800 5250 3800
Wire Wire Line
	5250 3800 5250 3900
Wire Wire Line
	5250 3900 4900 3900
$Comp
L Device:D D3
U 1 1 6136B067
P 3750 3350
F 0 "D3" H 3750 3133 50  0000 C CNN
F 1 "D" H 3750 3224 50  0000 C CNN
F 2 "Diode_THT:D_P600_R-6_P12.70mm_Horizontal" H 3750 3350 50  0001 C CNN
F 3 "~" H 3750 3350 50  0001 C CNN
	1    3750 3350
	-1   0    0    1   
$EndComp
$Comp
L Device:D D6
U 1 1 6136DDFE
P 4050 3350
F 0 "D6" H 4050 3133 50  0000 C CNN
F 1 "D" H 4050 3224 50  0000 C CNN
F 2 "Diode_THT:D_P600_R-6_P12.70mm_Horizontal" H 4050 3350 50  0001 C CNN
F 3 "~" H 4050 3350 50  0001 C CNN
	1    4050 3350
	-1   0    0    1   
$EndComp
$Comp
L Device:D D4
U 1 1 6136EDEC
P 3750 3550
F 0 "D4" H 3750 3450 50  0000 C CNN
F 1 "D" H 3750 3650 50  0000 C CNN
F 2 "Diode_THT:D_P600_R-6_P12.70mm_Horizontal" H 3750 3550 50  0001 C CNN
F 3 "~" H 3750 3550 50  0001 C CNN
	1    3750 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:D D7
U 1 1 6136F8CA
P 4050 3550
F 0 "D7" H 4050 3450 50  0000 C CNN
F 1 "D" H 4050 3650 50  0000 C CNN
F 2 "Diode_THT:D_P600_R-6_P12.70mm_Horizontal" H 4050 3550 50  0001 C CNN
F 3 "~" H 4050 3550 50  0001 C CNN
	1    4050 3550
	-1   0    0    1   
$EndComp
Text GLabel 3900 3350 1    50   BiDi ~ 0
P1
Text GLabel 3900 3550 3    50   BiDi ~ 0
P2
Wire Wire Line
	3600 3350 3600 3550
Wire Wire Line
	4200 3350 4200 3550
$Comp
L Device:D_Zener D5
U 1 1 613751CF
P 3900 4000
F 0 "D5" H 3900 3783 50  0000 C CNN
F 1 "24V TVS 1.5KE24CA" H 3900 3874 50  0000 C CNN
F 2 "Diode_THT:D_DO-201_P12.70mm_Horizontal" H 3900 4000 50  0001 C CNN
F 3 "~" H 3900 4000 50  0001 C CNN
	1    3900 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 4000 4200 4000
Wire Wire Line
	4200 4000 4200 3550
Connection ~ 4200 3550
Wire Wire Line
	3750 4000 3600 4000
Wire Wire Line
	3600 4000 3600 3550
Connection ~ 3600 3550
Text GLabel 4200 4300 2    50   BiDi ~ 0
HP
Text GLabel 3600 4000 0    50   BiDi ~ 0
HN
Text GLabel 5550 4300 0    50   BiDi ~ 0
HP
Text GLabel 5550 4100 0    50   BiDi ~ 0
HN
$Comp
L Device:R R3
U 1 1 613771DC
P 4200 4150
F 0 "R3" H 4270 4196 50  0000 L CNN
F 1 "1" H 4270 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4130 4150 50  0001 C CNN
F 3 "~" H 4200 4150 50  0001 C CNN
	1    4200 4150
	1    0    0    -1  
$EndComp
Connection ~ 4200 4000
Text GLabel 5550 4000 0    50   BiDi ~ 0
BIO
Text GLabel 5550 4400 0    50   BiDi ~ 0
AIO
Text GLabel 5550 4500 0    50   UnSpc ~ 0
TERM
Text GLabel 4500 5950 2    50   UnSpc ~ 0
TERM
$Comp
L Device:R R5
U 1 1 61378560
P 4500 5750
F 0 "R5" H 4570 5796 50  0000 L CNN
F 1 "100" H 4570 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4430 5750 50  0001 C CNN
F 3 "~" H 4500 5750 50  0001 C CNN
	1    4500 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5900 4500 5950
$Comp
L Device:R R4
U 1 1 6137A03B
P 4500 5100
F 0 "R4" H 4570 5146 50  0000 L CNN
F 1 "100" H 4570 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4430 5100 50  0001 C CNN
F 3 "~" H 4500 5100 50  0001 C CNN
	1    4500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5500 4500 5600
Text GLabel 4500 4700 2    50   BiDi ~ 0
AIO
Text GLabel 4500 5500 2    50   BiDi ~ 0
BIO
Text GLabel 3300 4700 0    50   BiDi ~ 0
P1
Text GLabel 3300 5500 0    50   BiDi ~ 0
P2
$Comp
L power:GND #PWR01
U 1 1 6137F2B3
P 3600 5000
F 0 "#PWR01" H 3600 4750 50  0001 C CNN
F 1 "GND" H 3605 4827 50  0000 C CNN
F 2 "" H 3600 5000 50  0001 C CNN
F 3 "" H 3600 5000 50  0001 C CNN
	1    3600 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D1
U 1 1 6137E5D0
P 3600 4850
F 0 "D1" V 3554 4930 50  0000 L CNN
F 1 "5.8V TVS SMBJ5.0A" V 3645 4930 50  0000 L CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 3600 4850 50  0001 C CNN
F 3 "~" H 3600 4850 50  0001 C CNN
	1    3600 4850
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 6137D537
P 3450 4700
F 0 "C1" V 3702 4700 50  0000 C CNN
F 1 "1u" V 3611 4700 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3488 4550 50  0001 C CNN
F 3 "~" H 3450 4700 50  0001 C CNN
	1    3450 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 61381504
P 3600 5800
F 0 "#PWR02" H 3600 5550 50  0001 C CNN
F 1 "GND" H 3605 5627 50  0000 C CNN
F 2 "" H 3600 5800 50  0001 C CNN
F 3 "" H 3600 5800 50  0001 C CNN
	1    3600 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D2
U 1 1 6138150A
P 3600 5650
F 0 "D2" V 3554 5730 50  0000 L CNN
F 1 "5.8V TVS SMBJ5.0A" V 3645 5730 50  0000 L CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 3600 5650 50  0001 C CNN
F 3 "~" H 3600 5650 50  0001 C CNN
	1    3600 5650
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 61381510
P 3450 5500
F 0 "C2" V 3702 5500 50  0000 C CNN
F 1 "1u" V 3611 5500 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3488 5350 50  0001 C CNN
F 3 "~" H 3450 5500 50  0001 C CNN
	1    3450 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 61381E7D
P 3750 4700
F 0 "R1" V 3543 4700 50  0000 C CNN
F 1 "4.7" V 3634 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 3680 4700 50  0001 C CNN
F 3 "~" H 3750 4700 50  0001 C CNN
	1    3750 4700
	0    1    1    0   
$EndComp
Connection ~ 3600 4700
$Comp
L Device:R R2
U 1 1 61383475
P 3750 5500
F 0 "R2" V 3543 5500 50  0000 C CNN
F 1 "4.7" V 3634 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 3680 5500 50  0001 C CNN
F 3 "~" H 3750 5500 50  0001 C CNN
	1    3750 5500
	0    1    1    0   
$EndComp
Connection ~ 3600 5500
Wire Wire Line
	3900 5500 4500 5500
Wire Wire Line
	4500 5250 4500 5500
Connection ~ 4500 5500
Wire Wire Line
	4500 4700 4500 4950
Wire Wire Line
	4500 4700 3900 4700
Text GLabel 6350 4300 2    50   UnSpc ~ 0
CAPP
Text GLabel 6350 4400 2    50   UnSpc ~ 0
HPA
$Comp
L power:GND #PWR04
U 1 1 613A2A77
P 6350 3800
F 0 "#PWR04" H 6350 3550 50  0001 C CNN
F 1 "GND" V 6355 3672 50  0000 R CNN
F 2 "" H 6350 3800 50  0001 C CNN
F 3 "" H 6350 3800 50  0001 C CNN
	1    6350 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 613A3B09
P 6500 3500
F 0 "R7" V 6293 3500 50  0000 C CNN
F 1 "62k" V 6384 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 6430 3500 50  0001 C CNN
F 3 "~" H 6500 3500 50  0001 C CNN
	1    6500 3500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 613A4804
P 6650 3500
F 0 "#PWR08" H 6650 3250 50  0001 C CNN
F 1 "GND" V 6655 3372 50  0000 R CNN
F 2 "" H 6650 3500 50  0001 C CNN
F 3 "" H 6650 3500 50  0001 C CNN
	1    6650 3500
	0    -1   -1   0   
$EndComp
Text GLabel 6350 3600 2    50   Input ~ 0
TVT
Text GLabel 6350 3700 2    50   Input ~ 0
TVL
Text GLabel 7450 3250 2    50   Output ~ 0
TVT
Text GLabel 7450 3550 2    50   Output ~ 0
TVL
$Comp
L power:+5V #PWR09
U 1 1 613A6659
P 7300 2950
F 0 "#PWR09" H 7300 2800 50  0001 C CNN
F 1 "+5V" H 7315 3123 50  0000 C CNN
F 2 "" H 7300 2950 50  0001 C CNN
F 3 "" H 7300 2950 50  0001 C CNN
	1    7300 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 613A74D0
P 7300 3100
F 0 "R8" H 7370 3146 50  0000 L CNN
F 1 "1M" H 7370 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7230 3100 50  0001 C CNN
F 3 "~" H 7300 3100 50  0001 C CNN
	1    7300 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 613A88EA
P 7300 3400
F 0 "R9" H 7370 3446 50  0000 L CNN
F 1 "220k" H 7370 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7230 3400 50  0001 C CNN
F 3 "~" H 7300 3400 50  0001 C CNN
	1    7300 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 613A9AD4
P 7300 3700
F 0 "R10" H 7370 3746 50  0000 L CNN
F 1 "168k" H 7370 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7230 3700 50  0001 C CNN
F 3 "~" H 7300 3700 50  0001 C CNN
	1    7300 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3250 7450 3250
Connection ~ 7300 3250
Wire Wire Line
	7300 3550 7450 3550
Connection ~ 7300 3550
$Comp
L power:GND #PWR010
U 1 1 613ACFCD
P 7300 3850
F 0 "#PWR010" H 7300 3600 50  0001 C CNN
F 1 "GND" H 7305 3677 50  0000 C CNN
F 2 "" H 7300 3850 50  0001 C CNN
F 3 "" H 7300 3850 50  0001 C CNN
	1    7300 3850
	1    0    0    -1  
$EndComp
Text GLabel 5250 3100 0    50   Input ~ 0
VLOGIC
$Comp
L Device:R R6
U 1 1 613AF9E9
P 5350 3250
F 0 "R6" H 5420 3296 50  0000 L CNN
F 1 "4.7k" H 5420 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 5280 3250 50  0001 C CNN
F 3 "~" H 5350 3250 50  0001 C CNN
	1    5350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3400 5350 3400
Connection ~ 5350 3400
Wire Wire Line
	5350 3400 5550 3400
Wire Wire Line
	5250 3100 5350 3100
$Comp
L Custom_Components:MAX22088 U1
U 1 1 61357A32
P 5950 4150
F 0 "U1" H 5950 5165 50  0000 C CNN
F 1 "MAX22088" H 5950 5074 50  0000 C CNN
F 2 "Package_DFN_QFN:TQFN-24-1EP_4x4mm_P0.5mm_EP2.8x2.8mm_PullBack" H 5950 4050 50  0001 C CNN
F 3 "" H 5950 4050 50  0001 C CNN
	1    5950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4350 7550 4350
Wire Wire Line
	7600 4750 7600 4350
Connection ~ 7100 4750
Wire Wire Line
	7300 4750 7100 4750
$Comp
L Device:C C5
U 1 1 613A075C
P 7450 4750
F 0 "C5" V 7198 4750 50  0000 C CNN
F 1 "1u" V 7289 4750 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 7488 4600 50  0001 C CNN
F 3 "~" H 7450 4750 50  0001 C CNN
	1    7450 4750
	0    1    1    0   
$EndComp
Connection ~ 7100 4350
Wire Wire Line
	7250 4350 7100 4350
$Comp
L Device:R R11
U 1 1 6139F8F9
P 7400 4350
F 0 "R11" V 7193 4350 50  0000 C CNN
F 1 "180k" V 7284 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7330 4350 50  0001 C CNN
F 3 "~" H 7400 4350 50  0001 C CNN
	1    7400 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 4750 7100 4700
Wire Wire Line
	7000 4750 7100 4750
Wire Wire Line
	7100 4350 7100 4400
Wire Wire Line
	7000 4350 7100 4350
$Comp
L Device:C C4
U 1 1 6139E0A2
P 7100 4550
F 0 "C4" H 7215 4596 50  0000 L CNN
F 1 "100n" H 7215 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 7138 4400 50  0001 C CNN
F 3 "~" H 7100 4550 50  0001 C CNN
	1    7100 4550
	1    0    0    -1  
$EndComp
Text GLabel 7000 4750 0    50   UnSpc ~ 0
HPA
Text GLabel 7000 4350 0    50   UnSpc ~ 0
CAPP
$Comp
L power:+5V #PWR011
U 1 1 613BB228
P 8150 2950
F 0 "#PWR011" H 8150 2800 50  0001 C CNN
F 1 "+5V" H 8165 3123 50  0000 C CNN
F 2 "" H 8150 2950 50  0001 C CNN
F 3 "" H 8150 2950 50  0001 C CNN
	1    8150 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 613BDC94
P 8150 3100
F 0 "C7" H 8035 3146 50  0000 R CNN
F 1 "1u" H 8035 3055 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 8188 2950 50  0001 C CNN
F 3 "~" H 8150 3100 50  0001 C CNN
	1    8150 3100
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 613BF064
P 8550 3100
F 0 "C9" H 8665 3146 50  0000 L CNN
F 1 "10u" H 8665 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 8588 2950 50  0001 C CNN
F 3 "~" H 8550 3100 50  0001 C CNN
	1    8550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2950 8550 2950
Connection ~ 8150 2950
$Comp
L power:GND #PWR012
U 1 1 613C1C3B
P 8150 3250
F 0 "#PWR012" H 8150 3000 50  0001 C CNN
F 1 "GND" H 8155 3077 50  0000 C CNN
F 2 "" H 8150 3250 50  0001 C CNN
F 3 "" H 8150 3250 50  0001 C CNN
	1    8150 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 613C2529
P 8550 3250
F 0 "#PWR015" H 8550 3000 50  0001 C CNN
F 1 "GND" H 8555 3077 50  0000 C CNN
F 2 "" H 8550 3250 50  0001 C CNN
F 3 "" H 8550 3250 50  0001 C CNN
	1    8550 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR013
U 1 1 613C3213
P 8200 4000
F 0 "#PWR013" H 8200 3850 50  0001 C CNN
F 1 "+12V" H 8215 4173 50  0000 C CNN
F 2 "" H 8200 4000 50  0001 C CNN
F 3 "" H 8200 4000 50  0001 C CNN
	1    8200 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 613C4602
P 8000 4150
F 0 "C6" H 8115 4196 50  0000 L CNN
F 1 "100u" H 8115 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 8038 4000 50  0001 C CNN
F 3 "~" H 8000 4150 50  0001 C CNN
	1    8000 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 613C5597
P 8400 4150
F 0 "C8" H 8515 4196 50  0000 L CNN
F 1 "100u" H 8515 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 8438 4000 50  0001 C CNN
F 3 "~" H 8400 4150 50  0001 C CNN
	1    8400 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4300 8200 4300
$Comp
L power:GND #PWR014
U 1 1 613C88C2
P 8200 4300
F 0 "#PWR014" H 8200 4050 50  0001 C CNN
F 1 "GND" H 8205 4127 50  0000 C CNN
F 2 "" H 8200 4300 50  0001 C CNN
F 3 "" H 8200 4300 50  0001 C CNN
	1    8200 4300
	1    0    0    -1  
$EndComp
Connection ~ 8200 4300
Wire Wire Line
	8200 4300 8400 4300
Wire Wire Line
	8200 4000 8400 4000
Wire Wire Line
	8000 4000 8200 4000
Connection ~ 8200 4000
$Comp
L power:+5V #PWR017
U 1 1 61359260
P 4700 2000
F 0 "#PWR017" H 4700 1850 50  0001 C CNN
F 1 "+5V" V 4700 2150 50  0000 L CNN
F 2 "" H 4700 2000 50  0001 C CNN
F 3 "" H 4700 2000 50  0001 C CNN
	1    4700 2000
	0    1    1    0   
$EndComp
Text GLabel 4700 2200 2    50   Output ~ 0
RST
$Comp
L power:GND #PWR018
U 1 1 6135B8B4
P 4700 2300
F 0 "#PWR018" H 4700 2050 50  0001 C CNN
F 1 "GND" V 4705 2172 50  0000 R CNN
F 2 "" H 4700 2300 50  0001 C CNN
F 3 "" H 4700 2300 50  0001 C CNN
	1    4700 2300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x07_Male J1
U 1 1 6135CD01
P 4500 2200
F 0 "J1" H 4608 2681 50  0000 C CNN
F 1 "Conn_01x07_Male" H 4608 2590 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 4500 2200 50  0001 C CNN
F 3 "~" H 4500 2200 50  0001 C CNN
	1    4500 2200
	1    0    0    -1  
$EndComp
Text GLabel 4700 2400 2    50   Input ~ 0
DOUT
Text GLabel 4700 2500 2    50   Output ~ 0
DIN
$Comp
L power:+12V #PWR016
U 1 1 61361DA6
P 4700 1900
F 0 "#PWR016" H 4700 1750 50  0001 C CNN
F 1 "+12V" V 4700 2050 50  0000 L CNN
F 2 "" H 4700 1900 50  0001 C CNN
F 3 "" H 4700 1900 50  0001 C CNN
	1    4700 1900
	0    1    1    0   
$EndComp
Text GLabel 4700 2100 2    50   Output ~ 0
VLOGIC
$Comp
L Connector:Conn_01x01_Male J2
U 1 1 61364FB1
P 5350 1900
F 0 "J2" H 5458 2081 50  0000 C CNN
F 1 "Conn_01x01_Male" H 5458 1990 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5350 1900 50  0001 C CNN
F 3 "~" H 5350 1900 50  0001 C CNN
	1    5350 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 61366F66
P 5350 2200
F 0 "J3" H 5458 2381 50  0000 C CNN
F 1 "Conn_01x01_Male" H 5458 2290 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5350 2200 50  0001 C CNN
F 3 "~" H 5350 2200 50  0001 C CNN
	1    5350 2200
	1    0    0    -1  
$EndComp
Text GLabel 5550 1900 2    50   BiDi ~ 0
P1
Text GLabel 5550 2200 2    50   BiDi ~ 0
P2
Wire Wire Line
	6350 3900 6350 4000
Connection ~ 6350 4000
$Comp
L power:GND #PWR019
U 1 1 6141948B
P 6200 4650
F 0 "#PWR019" H 6200 4400 50  0001 C CNN
F 1 "GND" H 6205 4477 50  0000 C CNN
F 2 "" H 6200 4650 50  0001 C CNN
F 3 "" H 6200 4650 50  0001 C CNN
	1    6200 4650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
