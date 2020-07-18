# Mirage
This is an environment used for penetration testing and security auditing similar to BtleJuice. There are many components which allow users to perform attacks and actions. 

## Required Libraries
Many libraries are required for this tool to be used:

* keyboard
* psutil
* pyserial
* pyusb
* terminaltables
* scopy
* pycryptodomex
* matplotlib

## Installation
Once the libraries are installed, you can then proceed to install the tool.

Firstly, clone the git repository:
```git clone git://redmine.laas.fr/laas/mirage.git```

You then have two choices. You can either install Mirage by using the setup.py with the command:
```sudo python3 setup.py install```

Or you can launch the tool using the command:
```./mirage_launcher```

## Bluetooth Low Energy Modules
There are many modules within the BLE context:

Name | Description
------------ | -------------
ble_info | Displays information about given interface
ble_connect | Connects to Peripheral's device as Central
ble_master | Simulates a Central Device
ble_slave | Simulates a Peripheral Device
ble_discover | Allows to dump the ATT/GATT database of a Peripheral
ble_adv | Sends advertisements
ble_scan | Scans advertisements
ble_pair | Pairing with Peripheral or Central
ble_mitm | Performs a Man-in-the-Middle attack
ble_sniff | Sniffs the advertisements and connections
ble_jam | Jams any advertisements or connections
ble_hijack | hijacks and existing connection
ble_crack | Cracks a Temp key
ble_monitor | Monitors an HCI communication

## Running the tool
To run the command that you wish to run start with: ```mirage``` 
Then follow it with the module of your choice.

### ble_mitm
Firstly, two HCI devices are required for a MITM attack to be performed.

You are able to see if there are 2 devices with the command:
```hciconfig```

To run the tool with a simple MITM attack, run this command:
```sudo mirage ble_mitm Target=40:06:A0:8C:9D:DA```

## Scenarios
Scenarios can be written to modify the behavoiur of the ble-mitm module.

A scenario has to be generated first of all:
```mirage --create_scenario```

You are then prompted to give the scenario a name.

Once this is done you are able to go to the directory where the scenario is:
```cd .mirage/scenarios/```

You can then modify the code with an editor, I used vim:
```vim mitm_attack.py```

When wanting to run the tool with the scenario use:
```sudo mirage ble_mitm Target=40:06:A0:8C:9D:DA SCENARIO=mitm_attack```




** From https://homepages.laas.fr/rcayre/mirage-documentation/overview.html **
