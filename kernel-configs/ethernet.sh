# Enable the kernel drivers
echo "dtoverlay=dwc2" | sudo tee -a /boot/config.txt
echo "dwc2" | sudo tee -a /etc/modules
echo "libcomposite" | sudo tee -a /etc/modules

# Enable the script to run on startup
sudo echo 'bash /opt/starfleetorg/programs/Ethernet/main.sh' >> /etc/rc.local
sudo echo 'bash /opt/starfleetorg/programs/Ethernet/main.sh' >> /etc/rc.local

