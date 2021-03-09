# Fast Servo MINIMAL ADC-DAC passthrough

Inside this repository you'll find implemented VERY basic support for Fast Servo hardware provisioning.

What has been implemented?
  * LTC2195 ADC interface
    * Data from ADC input lanes are deserialized with the use of ISERDESE2 (one for each lane + one for FRAME line)
    * Each lane is delayed with a IDELAYE2 (so far delay value is fixed to 25)
    * configuration via Zynq's SPI0 from PS [software not implemented]
  * AD9117 DAC interface
    * 16-bit-wide data from ADC is passed to 14-bit-wide DAC output (data inside AD9117 module is bit-shifted by 2 bits)
    * output DDR is implemented with ODDR
    * configuration via Zynq's SPI1 from PS [software not written]
* clock locking to:
    * ADC Clock from Si5340 - clocks counter that blinks Front Panel LEDs with the period of 1 s
    * DAC Clock from Si5340 - clock counter that blinks LEDs with the period of 1s
    * CLK_100M - clocks counter that switches DIO pins with the period of 1s
    * DataClockOut (DCO) from LTC2195 and produces 2 times slower DCO_2D clock and phase aligned DCO clock (as well as !DCO)
* ETHERNET interface with Xilinx IP - MIO[16-27] + MDIO => MIO[52-53]
* Si5340 
  * configuration via I2C with Zynq I2C0 [only connections, SW not written] 
  * control signals LOL, nRST, LOS, intr with Zynq's PS GPIO
* AFE - both ADC and DAC AFE with Zynq's PS GPIO

## Issue?

Both DCO and ADC clock from Si5340 are connected to the same clock region - for each clock region there is only one MMCME and one PLL. To use ADC clock with MMCME one would have either feed DCO  to PLL (which is a rather poor idea - afaik, in such case one would lose ability to dynamically adjust phase and delay of clock signal), or overcome Vivado Place 30-575 error (in similar fashion as [here](https://www.xilinx.com/support/answers/61601.html) and [here](https://www.xilinx.com/support/answers/66659.html)). 