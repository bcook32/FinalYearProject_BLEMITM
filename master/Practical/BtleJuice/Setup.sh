#Install the required dependencies for BtleJuice
sudo apt-get install bluetooth bluez libbluetooth-dev libudev-libudev

#Earlier version of node required for BtleJuice
nvm install 8.10.0

#Specify the node version you wish to use
nvm use 8.10.0

#Install BtleJuice
sudo npm install -g btlejuice

#Missing the Bluetooth-hci-socket so install separately
sudo npm install bluetooth-hci-socket
