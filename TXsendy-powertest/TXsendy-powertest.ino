#include <SPI.h>
#include "API.h"
#include "nRF24L01.h"
#include <avr/sleep.h>
#include <string.h>

//#define pin1    2
//#define pin2    3
void setup() 
{
  Serial.begin(9600);
  pinMode(CE,  OUTPUT);
  pinMode(CSN, OUTPUT);
  pinMode(IRQ, INPUT);

  for (int i = 0; i < 20; i++) {
    if(i != 8)//just because the button is hooked up to digital pin 2
    pinMode(i, OUTPUT);
  }
  //pinMode(pin1, INPUT);
  //pinMode(pin2, INPUT);
 
  SPI.begin();
  delay(50);
  init_io();                        // Initialize IO port
  unsigned char sstatus=SPI_Read(STATUS);
  Serial.println("*******************TX_Mode Start****************************");
  Serial.print("status = ");    
  Serial.println(sstatus,HEX);     // There is read the mode’s status register, the default value should be ‘E’
  TX_Mode();
  delay(100);
  
  attachInterrupt(0, turn_on, RISING);
  attachInterrupt(1, turn_off, RISING);
  set_sleep_mode(SLEEP_MODE_PWR_DOWN);   // sleep mode is set here  
  sleep_enable();
}

void loop() 
{
  sleep_mode();
  delay(1000);
  sendy();
  
}

void sendy(void)
{
    SPI_RW_Reg(WRITE_REG + CONFIG, 0x0E);         //nRF24L01 POWER ON
           
    unsigned char sstatus = SPI_Read(STATUS);                   // read register STATUS's value
    if(sstatus&TX_DS)                                           // if receive data ready (TX_DS) interrupt
    {
      SPI_RW_Reg(FLUSH_TX,0);                                  
      SPI_Write_Buf(WR_TX_PLOAD,tx_buf,TX_PLOAD_WIDTH);       // write playload to TX_FIFO
    }
    if(sstatus&MAX_RT)                                         // if receive data ready (MAX_RT) interrupt, this is retransmit than  SETUP_RETR                          
    {
      SPI_RW_Reg(FLUSH_TX,0);
      SPI_Write_Buf(WR_TX_PLOAD,tx_buf,TX_PLOAD_WIDTH);      // disable standy-mode
    }
    SPI_RW_Reg(WRITE_REG+STATUS,sstatus);                     // clear RX_DR or TX_DS or MAX_RT interrupt flag
    //while((digitalRead(pin1) || digitalRead(pin2)) == LOW)
    //{
      //wait
    //}
    delay(100);
    SPI_RW_Reg(WRITE_REG + CONFIG, 0x0C);
}
void turn_on(void)
{
  //sleep_disable();
  Serial.println("ON");
  memcpy(tx_buf, SW_ON, strlen(SW_ON)+1);       //copy SW_ON to tx_buf
}

void turn_off(void)
{
  sleep_disable();
  Serial.println("OFF");
  memcpy(tx_buf, SW_OFF, strlen(SW_OFF)+1);       //copy SW_OFF to tx_buf
}

void init_io(void)
{
  digitalWrite(IRQ, 0);
  digitalWrite(CE, 0);      // chip enable
  digitalWrite(CSN, 1);                 // Spi disable  
}
