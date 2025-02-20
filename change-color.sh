#!/bin/bash

colorName=$1
colorNameDark="${colorName}-dark"

if [ ${colorName} = 'reset' ]; then
	cp ./scalable/places/folder-grey.svg ./scalable/places/folder.svg
else
    if grep -wq "${colorName}" ./Palette.txt ; then 
        color=$(awk -v vawk="${1}" '$1==vawk{print $3}' Palette.txt)
        colorDark=$(awk -v vawk="${1}-dark" '$1==vawk{print $3}' Palette.txt)

        sed -i "64s/#[a-f0-9]\{6\}/#${color::-2}/g" ./scalable/places/folder.svg
        sed -i "59s/#[a-f0-9]\{6\}/#${colorDark::-2}/g" ./scalable/places/folder.svg
    else 
        echo "Invalid argument ..."
    fi
fi

gsettings set org.gnome.desktop.interface icon-theme 'Hicolor'
gsettings set org.gnome.desktop.interface icon-theme 'Skeuowaita'
