# Ubertooth-One
The Project Ubertooth is open-source software used to sniff data. The tool works in conjuction with the Ubertooth One. 
 
## Setup
Various dependencies are required to be installed before the tools can be used.
The command that is run is:

**Debian/Ubuntu**  
```
sudo apt-get install cmake libusb-1.0-0-dev make gcc g++ libbluetooth-dev \
pkg-config libpcap-dev python-numpy python-pyside python-qt4
```
**Fedora/Red Hat** 
```
su -c "yum install libusb1-devel make gcc wget tar bluez-libs-devel"
```
**Mac OS X**
```
brew install libusb wget cmake pkg-config libpcap
or
sudo port install libusb wget cmake python27 py27-numpy py27-pyside
```
**FreeBSD**
```
sudo pkg install ubertooth
```


## Install the Libbtbb library
The Bluetooth baseband library is required by the Ubertooth. This is so that it can decode Bluetooth packets:
```
wget https://github.com/greatscottgadgets/libbtbb/archive/2018-12-R1.tar.gz -O libbtbb-2018-12-R1.tar.gz
tar -xf libbtbb-2018-12-R1.tar.gz
cd libbtbb-2018-12-R1
mkdir build
cd build
cmake ..
make
sudo make install
sudo ldconfig
```

## Installing Ubertooth Tools
Once all of the dependencies are installed it is ready to install the Ubertooth.
```
wget https://github.com/greatscottgadgets/ubertooth/releases/download/2018-12-R1/ubertooth-2018-12-R1.tar.xz
tar xf ubertooth-2018-12-R1.tar.xz
cd ubertooth-2018-12-R1/host
mkdir build
cd build
cmake ..
make
sudo make install
sudo ldconfig
```
## Wireshark
Wireshark can be used to capture the data. Most OSes have it already installed, however if it is not run these commands:
```
sudo apt-get install wireshark wireshark-dev libwireshark-dev cmake
cd libbtbb-2018-12-R1/wireshark/plugins/btbb
mkdir build
cd build
cmake -DCMAKE_INSTALL_LIBDIR=/usr/lib/x86_64-linux-gnu/wireshark/libwireshark3/plugins ..
make
sudo make install
```
The BT plugin is then required:
```
sudo apt-get install wireshark wireshark-dev libwireshark-dev cmake
cd libbtbb-2018-12-R1/wireshark/plugins/btbredr
mkdir build
cd build
cmake -DCMAKE_INSTALL_LIBDIR=/usr/lib/x86_64-linux-gnu/wireshark/libwireshark3/plugins ..
make
sudo make install
```

## Running Ubertooth with Wireshark
To start make a temporary pipe:
```mkfifo /tmp/pipe```

Then open Wireshark and add that pipe as the in the interfaces. Select Settings > Manage Interfaces... > Pipes > + > New Pipe and type the destination.

Now run the data capture:
``` ubertooth-btle -f -c /tmp/pipe```

You can target a specific device with this command:
``` ubertooth-btle -t MAC_ADDRESS_OF_DEVICE```







