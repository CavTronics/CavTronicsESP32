[![cavtronics logo](https://cldup.com/BhJv2ZU0rj.jpg)](http://www.cavtronics.com "cavtronics")

# How to find the chip revision number

Espressif manufactured two different revisions of the ES32 chip to date:

## Using espefuse.py 

If you want to know the revision of a chip, you can use the espefuse.py  utility included in the esptool package:

After installing esp-idf goto this folder

    /Users/[USERNAME]/esp/esp-idf/components/esptool_py/esptool

replacing [USERNAME] with login name

specifying the serial port ( -p ) of the board in a command prompt type the following:

    python espefuse.py -p /dev/cu.wchusbserial1420 summary

### Results
The revision of the CHIP_VERSION and CHIP_PACKAGE you can determine the revision of the chip, for example my Lolin32 board has a chip with  revision 0 :

    Identity fuses:
    
    CHIP_VER_REV1          Silicon Revision 1                  = 1 R/W (0x1)
    CHIP_VERSION           Reserved for future chip versions   = 0 R/W (0x0)
    CHIP_PACKAGE           Chip package identifier             = 0 R/W (0x0)
    
## Using ESP32_Version sketch
Open up the ESP32_Version.ino sketch developed by Andreas Spiess found in the ESP32_Version folder and upload to the ESP32 board.

Open up the serial monitor to display the results:

    REG_READ(EFUSE_BLK0_RDATA3_REG) 1000000000000000
    EFUSE_RD_CHIP_VER_RESERVE_S 1100
    EFUSE_RD_CHIP_VER_RESERVE_V 111
    
    Chip Revision (official version): 1
    Chip Revision from shift Operation 1
