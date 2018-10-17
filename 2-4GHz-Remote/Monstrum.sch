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
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 5BC7FE57
P 5050 4450
AR Path="/5BC4CC0A/5BC7FE57" Ref="A?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC7FE57" Ref="A?"  Part="1" 
F 0 "A?" H 5050 3364 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5050 3273 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5200 3500 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5050 3450 50  0001 C CNN
	1    5050 4450
	1    0    0    -1  
$EndComp
$Comp
L Relay_SolidState:S216S02 U?
U 1 1 5BC7FE5E
P 6600 2550
AR Path="/5BC4CC0A/5BC7FE5E" Ref="U?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC7FE5E" Ref="U?"  Part="1" 
F 0 "U?" H 6600 2875 50  0000 C CNN
F 1 "S216S02" H 6600 2784 50  0000 C CNN
F 2 "Package_SIP:SIP4_Sharp-SSR_P7.62mm_Straight" H 6400 2350 50  0001 L CIN
F 3 "http://www.sharp-world.com/products/device/lineup/data/pdf/datasheet/s116s02_e.pdf" H 6565 2550 50  0001 L CNN
	1    6600 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 6050 5050 5450
Wire Wire Line
	5150 5450 5150 6050
Wire Wire Line
	5150 6050 5100 6050
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J?
U 1 1 5BC7FE68
P 5000 2450
AR Path="/5BC4CC0A/5BC7FE68" Ref="J?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC7FE68" Ref="J?"  Part="1" 
F 0 "J?" H 5050 2767 50  0000 C CNN
F 1 "NRF24L01" H 5050 2676 50  0000 C CNN
F 2 "" H 5000 2450 50  0001 C CNN
F 3 "~" H 5000 2450 50  0001 C CNN
	1    5000 2450
	1    0    0    -1  
$EndComp
Text GLabel 4450 4750 0    50   Input ~ 0
CE
Wire Wire Line
	4450 4750 4550 4750
Text GLabel 4450 4850 0    50   Input ~ 0
CSN
Wire Wire Line
	4450 4850 4550 4850
Text GLabel 4450 4650 0    50   Input ~ 0
IRQ
Text GLabel 4450 4250 0    50   Input ~ 0
REL
Wire Wire Line
	4550 4250 4450 4250
Wire Wire Line
	4450 4650 4550 4650
Text GLabel 4700 2450 0    50   Input ~ 0
CE
Text GLabel 4700 2550 0    50   Input ~ 0
SCk
$Comp
L power:+3.3V #PWR?
U 1 1 5BC7FE79
P 5150 3350
AR Path="/5BC4CC0A/5BC7FE79" Ref="#PWR?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC7FE79" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5150 3200 50  0001 C CNN
F 1 "+3.3V" H 5165 3523 50  0000 C CNN
F 2 "" H 5150 3350 50  0001 C CNN
F 3 "" H 5150 3350 50  0001 C CNN
	1    5150 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5BC7FE7F
P 4850 3350
AR Path="/5BC4CC0A/5BC7FE7F" Ref="#PWR?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC7FE7F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4850 3200 50  0001 C CNN
F 1 "+5V" H 4865 3523 50  0000 C CNN
F 2 "" H 4850 3350 50  0001 C CNN
F 3 "" H 4850 3350 50  0001 C CNN
	1    4850 3350
	1    0    0    -1  
$EndComp
Text GLabel 4700 2650 0    50   Input ~ 0
MISO
Text GLabel 4450 5150 0    50   Input ~ 0
SCK
Text GLabel 4450 4950 0    50   Input ~ 0
MOSI
Text GLabel 4450 5050 0    50   Input ~ 0
MISO
Text GLabel 5350 2450 2    50   Input ~ 0
CSN
Text GLabel 5350 2550 2    50   Input ~ 0
MOSI
Text GLabel 5350 2650 2    50   Input ~ 0
IRQ
Wire Wire Line
	5300 2450 5350 2450
Wire Wire Line
	5300 2550 5350 2550
Wire Wire Line
	5300 2650 5350 2650
Wire Wire Line
	4700 2450 4800 2450
Wire Wire Line
	4700 2550 4800 2550
Wire Wire Line
	4700 2650 4800 2650
Wire Wire Line
	4450 4950 4550 4950
Wire Wire Line
	4450 5050 4550 5050
Wire Wire Line
	4450 5150 4550 5150
$Comp
L power:GND #PWR?
U 1 1 5BC7FE95
P 5100 6050
AR Path="/5BC4CC0A/5BC7FE95" Ref="#PWR?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC7FE95" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5100 5800 50  0001 C CNN
F 1 "GND" H 5105 5877 50  0000 C CNN
F 2 "" H 5100 6050 50  0001 C CNN
F 3 "" H 5100 6050 50  0001 C CNN
	1    5100 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC7FE9B
P 4350 2350
AR Path="/5BC4CC0A/5BC7FE9B" Ref="#PWR?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC7FE9B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4350 2100 50  0001 C CNN
F 1 "GND" H 4355 2177 50  0000 C CNN
F 2 "" H 4350 2350 50  0001 C CNN
F 3 "" H 4350 2350 50  0001 C CNN
	1    4350 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5BC7FEA1
P 5500 2200
AR Path="/5BC4CC0A/5BC7FEA1" Ref="#PWR?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC7FEA1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 2050 50  0001 C CNN
F 1 "+3.3V" H 5515 2373 50  0000 C CNN
F 2 "" H 5500 2200 50  0001 C CNN
F 3 "" H 5500 2200 50  0001 C CNN
	1    5500 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2350 5500 2350
Wire Wire Line
	5500 2350 5500 2200
Wire Wire Line
	4350 2350 4800 2350
$Comp
L power:+5V #PWR?
U 1 1 5BC7FEAA
P 5400 3350
AR Path="/5BC4CC0A/5BC7FEAA" Ref="#PWR?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC7FEAA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5400 3200 50  0001 C CNN
F 1 "+5V" H 5415 3523 50  0000 C CNN
F 2 "" H 5400 3350 50  0001 C CNN
F 3 "" H 5400 3350 50  0001 C CNN
	1    5400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3450 5150 3350
Connection ~ 5100 6050
Wire Wire Line
	5100 6050 5050 6050
Text GLabel 6150 2450 0    50   Input ~ 0
REL
Wire Wire Line
	6150 2450 6300 2450
Wire Wire Line
	5400 3350 5250 3350
Wire Wire Line
	5250 3350 5250 3450
Wire Wire Line
	4850 3350 4950 3350
Wire Wire Line
	4950 3350 4950 3450
$Comp
L power:GND #PWR?
U 1 1 5BC7FEB9
P 6150 2750
AR Path="/5BC4CC0A/5BC7FEB9" Ref="#PWR?"  Part="1" 
AR Path="/5BC4CC0A/5BC7EAF9/5BC7FEB9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6150 2500 50  0001 C CNN
F 1 "GND" H 6155 2577 50  0000 C CNN
F 2 "" H 6150 2750 50  0001 C CNN
F 3 "" H 6150 2750 50  0001 C CNN
	1    6150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2650 6150 2650
Wire Wire Line
	6150 2650 6150 2750
$Comp
L Converter_ACDC:RAC01-05SGB PS?
U 1 1 5BC80349
P 7850 3600
F 0 "PS?" H 7850 3967 50  0000 C CNN
F 1 "RAC01-05SGB" H 7850 3876 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_RECOM_RAC01-xxSGB_THT" H 7850 3350 50  0001 C CNN
F 3 "https://www.recom-power.com/pdf/Powerline-AC-DC/RAC01-GB.pdf" H 7700 3600 50  0001 C CNN
	1    7850 3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
