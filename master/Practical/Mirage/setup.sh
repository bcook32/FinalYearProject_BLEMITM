# Install pip
sudo apt install python-pip

# Install the libraries using pip
sudo pip install keyboard psutil pyserial pyusb terminaltables scopy pycryptodomex matplotlib

# Clone the repository
git clone git://redmine.laas.fr/laas/mirage.git

# Change directory to mirage
cd mirage

# Build the mirage repository
sudo python3 setup.py install
