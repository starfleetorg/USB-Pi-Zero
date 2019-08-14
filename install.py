#/usr/bin/env python3
import os

# Backing up
print("[i] Backing up Kernel configs")
os.system("sudo cp /boot/config.txt ./backups")
os.system("sudo cp /boot/cmdline.txt ./backups")
os.system("sudo cp /etc/modules ./backups")
os.system("sudo cp /etc/rc.local ./backups")

# ----------------------------- The real installation work starts here -----------------------------
print("[i] Enabling the startup LED")
os.system("sudo echo 'python /opt/starfleet/programs/LED/LED-ON' > /etc/rc.local")

print("[i] Enabling SSH")
os.system("sudo systemctl enable ssh")

# Ask for the device type
while 1==1:
    dev = input("Please enter the type of gadget to setup. [  1:Ethernet, 2:Serial Adapter  ]: ")

    if dev == "1":
        os.system("bash ./kernel-configs/ethernet.sh")
        break
    elif dev == "2":
        os.system("bash ./kernel-configs/serial.sh")
        break
    else:
        print("Please type either 1 or 2")

# Installing and setting up NetworkManager
sudo bash /opt/starfleet/programs/NetworkManager/install.sh

# Hide the installer
os.system("mv install.py .install.py")
os.system("mv .uninstall.py uninstall.py")
