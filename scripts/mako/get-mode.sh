#!/bin/bash
if [[ $(makoctl mode) = "do-not-disturb" ]]; then
    echo "{\"text\":\"\",\"class\":\"do-not-disturb\",\"tooltip\":\"In DND Mode\"}";
else 
    echo "{\"text\":\"\",\"class\":\"normal\",\"tooltip\":\"In normal Mode\"}";
fi
