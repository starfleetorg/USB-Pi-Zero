#!/bin/bash
cd /sys/kernel/config/usb_gadget/
mkdir -p isticktoit
cd isticktoit
echo 0x1d6b > idVendor # Linux Foundation
echo 0x0104 > idProduct # Multifunction Composite Gadget
echo 0x0100 > bcdDevice # v1.0.0
echo 0x0200 > bcdUSB # USB2
mkdir -p strings/0x409
echo "82958h8m8cfrgrew" > strings/0x409/serialnumber
echo "Starfleet Technologies Crop." > strings/0x409/manufacturer
echo "Starfleet USB Serial Device" > strings/0x409/product
mkdir -p configs/c.1/strings/0x409
echo "Config 1: ECM network" > configs/c.1/strings/0x409/configuration
echo 250 > configs/c.1/MaxPower

# Add functions here
mkdir -p functions/acm.usb0
ln -s functions/acm.usb0 configs/c.1/
# End functions

ls /sys/class/udc > UDC
