<p align="center">
    <img src="img/Neuwaita.png" width="200" height="200" alt="Logotype">
</p>
<h1 align="center"> Neuwaita </h1>
<h4 align="center"> A different take on the Adwaita theme. </h4>


![icons showcase][showcase]                                                                                  

[showcase]: img/Showcase.png "Showcase image"

<h6 align="center"> (Disclaimer : this repository is fork of <a href="https://github.com/Ashwatthaamaa/Neuwaita">Ashwatthaamaa/Neuwaita</a> which was also my account and repository but I lost my credentials so can't log back in, hence the fork)</h6>

## Installation
### User installation
Clone the repository into `~/.local/share/icons/Neuwaita`:
```
git clone --depth 1 git@github.com:RusticBard/Neuwaita.git ~/.local/share/icons/Neuwaita
```
### System-wide installation
Clone the repository into `/usr/share/icons`
```
sudo git clone --depth 1 git@github.com:RusticBard/Neuwaita.git /usr/share/icons/Neuwaita
```

## Updating
To update Neuwaita icon theme to the latest version:
```sh
# user installation
git -C ~/.local/share/icons/Neuwaita pull

# system-wide installation
sudo git -C /usr/share/icons/Neuwaita pull
```

## Requesting new icons:
I understand you really want the icon but when making an icon request, 
1. Check [here](https://github.com/Frostbitten-jello/Neuwaita/issues/7#issue-1534235372) if the icon you want is present in already or in the making.
2. please include the [actual name of the icon](#how-to-find-the-actual-name-of-the-icon) that you want to request.

## Using a fallback theme
You can tell system to use a fallback theme in case Neuwaita doesn't provide an icon for your app.
1. Navigate to Neuwaita installation directory (either `~/.local/share/icons/Neuwaita` or `/usr/share/icons/Neuwaita` depending on your installation)
2. Edit `Inherits` variable in index.theme
```
[Icon Theme]
Name=Neuwaita
Comment=Neuwaita icon theme
Inherits=theme-name,theme-name-2
Example=folder
```
You can add as many inherits as you wish. In the example above, icons will be first searched in `Neuwaita` then `theme-name` and then lastly in `theme-name-2`.
### How to find the **Actual name** of the icon?
You're searching for the [reverse domain name notation](https://en.wikipedia.org/wiki/Reverse_domain_name_notation) (e.g `org.mozilla.firefox` for Firefox) it can be found in different ways:
* Icons are usually located inside `/usr/share/icons/hicolor/scalable/<Name of your app>`
* For System-wide Flatpaks the location is `/var/lib/flatpak/app/<Name of your app>` the name of the folder is the name of your icon
* For user Flatpaks the location is `~/.var/app/<Name of your app>`
If you don't wanna find the icon in the files you can also look for the app in flathub go to the app you are requesting and scroll down to find installation instructions and there is a command you can copy as `flatpak install flathub <Actual name of your app>`

## List of icons :
[This](https://github.com/Frostbitten-jello/Neuwaita/issues/7#issue-1534235372) is a list of icons that are currently available along with icons that are currently pending to be added. You can see if your icon is present in list and if not then feel free to create an icon request :)
