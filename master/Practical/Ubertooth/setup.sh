# Install the dependencies
sudo apt-get install cmake libusb-1.0-0-dev make gcc g++ libbluetooth-dev pkg-config libpcap-dev python-numpy python-pyside python-qt4

# Clone the repository
wget https://github.com/greatscottgadgets/libbtbb/archive/2017-03-R2.tar.gz -O libbtbb-2017-03-R2.tar.gz

#Install libbtbb library
tar xf libbtbb-2017-03-R2.tar.gz
cd libbtbb-2017-03-R2
mkdir build
cd build
cmake ..
make
sudo make install
sudo ldconfig

#Install Ubertooth Tools
wget https://github.com/greatscottgadgets/ubertooth/releases/download/2017-03-R2/ubertooth-2017-03-R2.tar.xz -O ubertooth-2017-03-R2.tar.xz
tar xf ubertooth-2017-03-R2.tar.xz
cd ubertooth-2017-03-R2/host
mkdir build
cd build
cmake ..
make
sudo make install
sudo ldconfig

#Install Wireshark
sudo apt-get install wireshark wireshark-dev libwireshark-dev cmake
cd libbtbb-2018-12-R1/wireshark/plugins/btbb
mkdir build
cd build
cmake -DCMAKE_INSTALL_LIBDIR=/usr/lib/x86_64-linux-gnu/wireshark/libwireshark3/plugins ..
make
sudo make install

#Install BT plugin
sudo apt-get install wireshark wireshark-dev libwireshark-dev cmake
cd libbtbb-2018-12-R1/wireshark/plugins/btbredr
mkdir build
cd build
cmake -DCMAKE_INSTALL_LIBDIR=/usr/lib/x86_64-linux-gnu/wireshark/libwireshark3/plugins ..
make
sudo make install
