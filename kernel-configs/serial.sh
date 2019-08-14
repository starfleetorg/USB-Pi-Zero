# Enable the kernel drivers
echo "dtoverlay=dwc2" | sudo tee -a /boot/config.txt
echo "dwc2" | sudo tee -a /etc/modules
echo "libcomposite" | sudo tee -a /etc/modules

# Enable the script to run on startup
sudo echo 'bash /opt/starfleet/programs/Serial/main.sh' >> /etc/rc.local
sudo systemctl enable getty@ttyGS0.service

# Preventing hanging during shutdown
mkdir -p /etc/systemd/system/getty@ttyGS0.service.d
echo "TTYReset=no" | sudo tee -a /etc/systemd/system/getty@ttyGS0.service.d/override.conf
echo "TTYVHangup=no" | sudo tee -a /etc/systemd/system/getty@ttyGS0.service.d/override.conf
echo "TTYVTDisallocate=no" | sudo tee -a /etc/systemd/system/getty@ttyGS0.service.d/override.conf

# Adding a new user for this
sudo adduser pi
sudo usermod -aG sudo pi
echo "Plaese use the user pi when logging in over USB"
