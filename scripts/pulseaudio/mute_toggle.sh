#!/bin/bash
if [[ $(pactl get-sink-mute @DEFAULT_SINK@) == "Mute: no" ]]; then
    notify-send --urgency="low" --icon="audio-volume-muted" "Volume muted" "Volume has been muted. Right-click the icon in waybar to re-enable sound."
else
    notify-send --urgency="low" --icon="audio-volume-high" "Volume un-muted" "Volume has been un-muted. Right-click the icon in waybar to disable sound."
fi 

pactl set-sink-mute @DEFAULT_SINK@ toggle
