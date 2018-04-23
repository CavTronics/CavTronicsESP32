
# Firebeetle ESP32 issues

## Problem
When compiling and this error occurs:

    
    Traceback (most recent call last):
    
    File "/Users/[USERNAME]/Library/Arduino15/packages/esp32/hardware/DFRobot_FireBeetle-ESP32/0.0.3/tools/esptool.py", line 24, in <module>
    
    import serial
    
    ImportError: No module named serial
    
    exit status 1
    
    Error compiling for board FireBeetle-ESP32.

## Solution

This is not an ESP problem but a python problem to fix install pyserial using pip:

pip install pyserial
