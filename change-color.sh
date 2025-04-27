#!/bin/bash

colorName=$1
colorNameDark="${colorName}-dark"

if [ ${colorName} = 'reset' ]; then
	cp ~/.local/share/icons/Neuwaita/scalable/places/folder-grey.svg ~/.local/share/icons/Neuwaita/scalable/places/folder.svg
else
    if grep -wq "${colorName}" ~/.local/share/icons/Neuwaita/Palette.txt ; then 
        color=$(awk -v vawk="${1}" '$1==vawk{print $3}' ~/.local/share/icons/Neuwaita/Palette.txt)
        colorDark=$(awk -v vawk="${1}-dark" '$1==vawk{print $3}' ~/.local/share/icons/Neuwaita/Palette.txt)

        sed -i "64s/#[a-f0-9]\{6\}/#${color::-2}/g" ~/.local/share/icons/Neuwaita/scalable/places/folder.svg
        sed -i "59s/#[a-f0-9]\{6\}/#${colorDark::-2}/g" ~/.local/share/icons/Neuwaita/scalable/places/folder.svg
    else 
        echo "Invalid argument ..."
    fi
fi

gsettings set org.gnome.desktop.interface icon-theme 'Hicolor'
gsettings set org.gnome.desktop.interface icon-theme 'Neuwaita'
