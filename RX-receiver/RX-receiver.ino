#include <SPI.h>
#include "API.h"
#include "nRF24L01.h"

void setup()
{
  //Serial.begin(9600);
  pinMode(CE,  OUTPUT);
  pinMode(CSN, OUTPUT);
  pinMode(IRQ, INPUT);
  pinMode(relay, OUTPUT);
  digitalWrite(relay, HIGH);
  SPI.begin();
  delay(50);
  init_io();                        // Initialize IO port
  unsigned char sstatus=SPI_Read(STATUS);
 
  /*Serial.println("*******************RX_Mode Start****************************");
  Serial.print("status = ");
  Serial.println(sstatus,HEX);   // There is read the mode’s status register, the default value should be ‘E’
  */
  RX_Mode();                        // set RX mode
}

void loop()
{
  int on, off;
  unsigned char status = SPI_Read(STATUS);                         // read register STATUS's value
  if(status&RX_DR)                                                 // if receive data ready (TX_DS) interrupt
  {
    SPI_Read_Buf(RD_RX_PLOAD, rx_buf, TX_PLOAD_WIDTH);             // read playload to rx_buf
    SPI_RW_Reg(FLUSH_RX,0);
    on = memcmp(rx_buf, SW_ON, sizeof(SW_ON));
    off = memcmp(rx_buf, SW_OFF, sizeof(SW_OFF));
    if(on == 0)
    {
      //Serial.println("ON");
      digitalWrite(relay, LOW);
    }
    else if(off == 0)
    {
      //Serial.println("OFF");
      digitalWrite(relay, HIGH);
    }
    /*
    for(int i=0; i<TX_PLOAD_WIDTH; i++)
    {
      Serial.print(rx_buf[i],HEX);
      Serial.print(",");
    }
    Serial.println(" ");
    */
  }
  SPI_RW_Reg(WRITE_REG+STATUS,status);                             // clear RX_DR or TX_DS or MAX_RT interrupt flag
}

void init_io(void)
{
  digitalWrite(IRQ, 0);
  digitalWrite(CE, 0);      // chip enable
  digitalWrite(CSN, 1);     // Spi disable
}
