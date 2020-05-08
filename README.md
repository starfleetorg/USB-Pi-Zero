# USB-Pi-Zero
A set of open-source software that can allow you to access your Raspberry Pi Zero over USB

## How to setup
1. Create a new folder called "starfleetorg" in /opt
2. Clone this repo into it
3. Rename uninstall.py to .uninstall.py (it will disappear, it is just hidden)
4. Run install.py
5. Poweroff
6. Plug a data+charge cable into the DATA port on the RPi and a USB port on a PC(Any OS, Linux is recommended)
7. Look for a new device that just appeared on your computer
8. If you choose serial adapter then use a serial communication program(eg. screen) to connect to it
9. if you choose ethernet then connect to the new ethernet network it just created, then ssh into 10.42.0.1 (The ethernet mode is still in beta, might not work reliably)
