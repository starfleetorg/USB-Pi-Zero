import os

print("[i] Restoring configs")
os.system("sudo cp ./backups/config.txt /boot/config.txt")
os.system("sudo cp ./backups/cmdline.txt /boot/cmdline.txt")
os.system("sudo cp ./backups/modules /etc/modules")
os.system("sudo cp ./backups/rc.local /etc/rc.local")

os.system("sudo apt-get purge network-manager -y") # Uninstalling NetworkManager
os.system("systemctl disable ssh") # Disabling SSH
