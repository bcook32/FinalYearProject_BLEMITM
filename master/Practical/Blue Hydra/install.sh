# Install the required libraries
sudo apt-get install bluez bluez-test-scripts python-bluez python-dbus libsqlite3-dev ubertooth

# Install the bundler
sudo apt-get install ruby-dev bundler

# Clone the blue_hydra repository
git clone https://github.com/pwnieexpress/blue_hydra

# Change directory to the new blue_hydra directory
cd blue_hydra

# Use the bundler to install the tool
bundler install
