#!/bin/bash

BLUETOOTH_STATE="enabled"
if rfkill list bluetooth | grep -q 'yes$' ; then 
    rfkill unblock bluetooth
else
    rfkill block bluetooth
    BLUETOOTH_STATE="disabled"
fi

notify-send --urgency="low" --icon="bluetooth" "Bluetooth $BLUETOOTH_STATE" "Right-click on the waybar bluetooth icon to toggle Bluetooth."
