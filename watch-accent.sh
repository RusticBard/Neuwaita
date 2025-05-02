#!/bin/bash

gsettings monitor org.gnome.desktop.interface accent-color | while read -r line; do
    color=$(echo "$line" | cut -d':' -f2 | tr -d " '")

    ~/.local/share/icons/Neuwaita/change-color.sh $color
done
