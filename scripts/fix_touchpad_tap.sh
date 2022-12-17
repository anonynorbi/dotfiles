#!/bin/bash

# Getting values in variables
id=$(xinput | grep -i touchpad | xargs | cut -d " " -f 6 | cut -d "=" -f 2) 
setting_id=$(xinput list-props $(xinput | grep -i touchpad | xargs | cut -d " " -f 6 | cut -d "=" -f 2) | grep -i "tapping enabled (" | xargs | cut -d " " -f 4 | grep -Eo "[0-9]{3}")

# Execute final command
xinput set-prop $id $setting_id 1

