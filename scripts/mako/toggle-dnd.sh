#!/bin/bash

if [[ $(makoctl mode) = "do-not-disturb" ]]; then
    makoctl mode -r "do-not-disturb" > /dev/null
    makoctl mode -a "normal" > /dev/null
    notify-send --urgency="low" --icon="preferences-desktop-notification-bell" "Notifications Enabled" "Your notifications have been enabled. Right-click the notifications icon in waybar to disable them."
else
    notify-send --urgency="low" --icon="preferences-desktop-notification-bell" "Notifications Disabled" "Your notifications have been disabled. Right-click the notifications icon in waybar to re-enable them."
    makoctl mode -a "do-not-disturb" > /dev/null
    makoctl mode -r "default" > /dev/null
    makoctl mode -r "normal" > /dev/null
 fi    
