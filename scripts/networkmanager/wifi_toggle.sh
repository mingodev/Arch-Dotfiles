#!/bin/bash

if [[ $(nmcli radio wifi) == "enabled" ]]; then
    nmcli radio wifi off
    notify-send --urgency="low" --icon="network-wireless-disconnected" "Wi-Fi Disabled" "Right-click on waybar Wi-Fi icon to re-enable"
else
    nmcli radio wifi on
    notify-send --urgency="low" --icon="network-wireless" "Wi-Fi Enabled" "Right-click on waybar Wi-Fi icon to disable"
fi

