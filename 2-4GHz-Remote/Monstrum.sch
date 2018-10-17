EESchema Schematic File Version 4
LIBS:2-4GHz-Remote-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L Relay_SolidState:S216S02 U?
U 1 1 5BC7FE5E
P 8650 2750
AR Path="/5BC4CC0A/5BC7FE5E" Ref="U?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC7FE5E" Ref="U?"  Part="1" 
F 0 "U?" H 8650 3075 50  0000 C CNN
F 1 "S216S02" H 8650 2984 50  0000 C CNN
F 2 "Package_SIP:SIP4_Sharp-SSR_P7.62mm_Straight" H 8450 2550 50  0001 L CIN
F 3 "http://www.sharp-world.com/products/device/lineup/data/pdf/datasheet/s116s02_e.pdf" H 8615 2750 50  0001 L CNN
	1    8650 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J?
U 1 1 5BC7FE68
P 5700 6850
AR Path="/5BC4CC0A/5BC7FE68" Ref="J?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC7FE68" Ref="J?"  Part="1" 
F 0 "J?" H 5750 7167 50  0000 C CNN
F 1 "NRF24L01" H 5750 7076 50  0000 C CNN
F 2 "" H 5700 6850 50  0001 C CNN
F 3 "~" H 5700 6850 50  0001 C CNN
	1    5700 6850
	1    0    0    -1  
$EndComp
Text GLabel 5400 6850 0    50   Input ~ 0
CE
Text GLabel 5400 6950 0    50   Input ~ 0
SCk
Text GLabel 5400 7050 0    50   Input ~ 0
MISO
Text GLabel 6050 6850 2    50   Input ~ 0
CSN
Text GLabel 6050 6950 2    50   Input ~ 0
MOSI
Text GLabel 6050 7050 2    50   Input ~ 0
IRQ
Wire Wire Line
	6000 6850 6050 6850
Wire Wire Line
	6000 6950 6050 6950
Wire Wire Line
	6000 7050 6050 7050
Wire Wire Line
	5400 6850 5500 6850
Wire Wire Line
	5400 6950 5500 6950
Wire Wire Line
	5400 7050 5500 7050
$Comp
L power:GND #PWR?
U 1 1 5BC7FE9B
P 5050 6750
AR Path="/5BC4CC0A/5BC7FE9B" Ref="#PWR?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC7FE9B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5050 6500 50  0001 C CNN
F 1 "GND" H 5055 6577 50  0000 C CNN
F 2 "" H 5050 6750 50  0001 C CNN
F 3 "" H 5050 6750 50  0001 C CNN
	1    5050 6750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5BC7FEA1
P 6200 6600
AR Path="/5BC4CC0A/5BC7FEA1" Ref="#PWR?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC7FEA1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6200 6450 50  0001 C CNN
F 1 "+3.3V" H 6215 6773 50  0000 C CNN
F 2 "" H 6200 6600 50  0001 C CNN
F 3 "" H 6200 6600 50  0001 C CNN
	1    6200 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 6750 6200 6750
Wire Wire Line
	6200 6750 6200 6600
Wire Wire Line
	5050 6750 5500 6750
Text GLabel 8200 2650 0    50   Input ~ 0
REL
Wire Wire Line
	8200 2650 8350 2650
$Comp
L power:GND #PWR?
U 1 1 5BC7FEB9
P 8200 2950
AR Path="/5BC4CC0A/5BC7FEB9" Ref="#PWR?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC7FEB9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8200 2700 50  0001 C CNN
F 1 "GND" H 8205 2777 50  0000 C CNN
F 2 "" H 8200 2950 50  0001 C CNN
F 3 "" H 8200 2950 50  0001 C CNN
	1    8200 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2850 8200 2850
Wire Wire Line
	8200 2850 8200 2950
Text HLabel 7700 1600 1    50   Input ~ 0
L_IN
Text HLabel 7950 1600 1    50   Input ~ 0
N_IN
Text HLabel 9400 1650 1    50   Input ~ 0
N_OUT
Text HLabel 9650 1650 1    50   Input ~ 0
L_OUT
Wire Wire Line
	3050 6150 3150 6150
Wire Wire Line
	3050 6050 3150 6050
Wire Wire Line
	3050 5950 3150 5950
Text GLabel 3050 6050 0    50   Input ~ 0
MISO
Text GLabel 3050 5950 0    50   Input ~ 0
MOSI
Text GLabel 3050 6150 0    50   Input ~ 0
SCK
Wire Wire Line
	3050 5650 3150 5650
Wire Wire Line
	3150 5250 3050 5250
Text GLabel 3050 5250 0    50   Input ~ 0
REL
Text GLabel 3050 5650 0    50   Input ~ 0
IRQ
Wire Wire Line
	3050 5850 3150 5850
Text GLabel 3050 5850 0    50   Input ~ 0
CSN
Wire Wire Line
	3050 5750 3150 5750
Text GLabel 3050 5750 0    50   Input ~ 0
CE
$Comp
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 5BC7FE57
P 2950 5250
AR Path="/5BC4CC0A/5BC7FE57" Ref="A?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC7FE57" Ref="A?"  Part="1" 
F 0 "A?" H 2950 4164 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 2950 4073 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 3100 4300 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2950 4250 50  0001 C CNN
	1    2950 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 1650 9650 2850
Wire Wire Line
	9650 2850 8950 2850
Wire Wire Line
	7700 1600 7700 2350
Wire Wire Line
	7700 2350 9100 2350
Wire Wire Line
	9100 2350 9100 2650
Wire Wire Line
	9100 2650 8950 2650
Wire Wire Line
	7950 1650 7950 1950
Wire Wire Line
	7950 1950 9400 1950
Wire Wire Line
	9400 1950 9400 1650
$Comp
L Converter_ACDC:RAC01-12SGB PS?
U 1 1 5BC87834
P 8750 3700
F 0 "PS?" H 8750 4067 50  0000 C CNN
F 1 "RAC01-12SGB" H 8750 3976 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_RECOM_RAC01-xxSGB_THT" H 8750 3450 50  0001 C CNN
F 3 "https://www.recom-power.com/pdf/Powerline-AC-DC/RAC01-GB.pdf" H 8600 3700 50  0001 C CNN
	1    8750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1950 7950 3800
Wire Wire Line
	7950 3800 8350 3800
Connection ~ 7950 1950
Wire Wire Line
	8350 3600 7700 3600
Wire Wire Line
	7700 3600 7700 2350
Connection ~ 7700 2350
$Comp
L Device:LED D?
U 1 1 5BC88841
P 10600 5200
F 0 "D?" V 10638 5083 50  0000 R CNN
F 1 "LED" V 10547 5083 50  0000 R CNN
F 2 "" H 10600 5200 50  0001 C CNN
F 3 "~" H 10600 5200 50  0001 C CNN
	1    10600 5200
	0    -1   -1   0   
$EndComp
$Comp
L pspice:C C?
U 1 1 5BC889C1
P 10100 3700
F 0 "C?" V 9785 3700 50  0000 C CNN
F 1 "C" V 9876 3700 50  0000 C CNN
F 2 "" H 10100 3700 50  0001 C CNN
F 3 "~" H 10100 3700 50  0001 C CNN
	1    10100 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Bridge_+-AA D?
U 1 1 5BC88C8C
P 10100 4750
F 0 "D?" H 10441 4796 50  0000 L CNN
F 1 "D_Bridge_+-AA" H 10441 4705 50  0000 L CNN
F 2 "" H 10100 4750 50  0001 C CNN
F 3 "~" H 10100 4750 50  0001 C CNN
	1    10100 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 4750 10600 4750
Wire Wire Line
	10600 4750 10600 5050
Wire Wire Line
	9800 4750 9800 5500
Wire Wire Line
	9800 5500 10600 5500
Wire Wire Line
	10600 5500 10600 5350
$Comp
L Device:R R?
U 1 1 5BC8C545
P 10100 4200
F 0 "R?" H 10170 4246 50  0000 L CNN
F 1 "R" H 10170 4155 50  0000 L CNN
F 2 "" V 10030 4200 50  0001 C CNN
F 3 "~" H 10100 4200 50  0001 C CNN
	1    10100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3950 10100 4050
Wire Wire Line
	10100 4350 10100 4450
Wire Wire Line
	10100 3450 10100 2850
Wire Wire Line
	10100 2850 9650 2850
Connection ~ 9650 2850
Wire Wire Line
	7950 3800 7950 5300
Wire Wire Line
	7950 5300 10100 5300
Wire Wire Line
	10100 5300 10100 5050
Connection ~ 7950 3800
$Comp
L power:GND #PWR?
U 1 1 5BC90634
P 9350 3950
AR Path="/5BC4CC0A/5BC90634" Ref="#PWR?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC90634" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9350 3700 50  0001 C CNN
F 1 "GND" H 9355 3777 50  0000 C CNN
F 2 "" H 9350 3950 50  0001 C CNN
F 3 "" H 9350 3950 50  0001 C CNN
	1    9350 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3800 9350 3800
Wire Wire Line
	9350 3800 9350 3950
$Comp
L power:GND #PWR?
U 1 1 5BC9316B
P 3000 6500
AR Path="/5BC4CC0A/5BC9316B" Ref="#PWR?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC9316B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 6250 50  0001 C CNN
F 1 "GND" H 3005 6327 50  0000 C CNN
F 2 "" H 3000 6500 50  0001 C CNN
F 3 "" H 3000 6500 50  0001 C CNN
	1    3000 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6500 3050 6500
Wire Wire Line
	3050 6500 3050 6250
Wire Wire Line
	2950 6250 2950 6500
Wire Wire Line
	2950 6500 3000 6500
Connection ~ 3000 6500
$EndSCHEMATC
