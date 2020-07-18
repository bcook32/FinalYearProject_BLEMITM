


# BlueHydra

BlueHydra is a tool used for Bluetooth device discovery. It is based on the "bluez" library. The tool uses two pieces of hardware: an **Ubertooth** and a **Bluetooth Adapter**. 

## Setup
Install the dependencies:
 - blue
 - bluez-test-scripts
 - python-bluez
 - python-dbus
 - ubertooth
 - sqlite3
 - libsqlite3-dev

Ensure that the "bluez" distribution is updated to "bluez 5" 

If you are using a debian system, the dependencies can be installed with this:

```sudo apt-get install bluez bluez-test-scripts python-bluez python-dbus libsqlite3-dev ubertooth```

To install the Gems a bundler may be used:

```sudo apt-get install ruby-dev bundler```

Then clone the GitHub repository to get tool:

```git clone https://github.com/pwnieexpress/blue_hydra```

Once the repository has been cloned change directory to get into it:

```cd blue_hydra```

Use the bundler to install:

```bundler install```


## Running the tool
If the setup is completed and the dependencies are installed, BlueHydra is ready to run. It only requires the simple command: 

```bundle exec ./bin/blue_hydra``` 




