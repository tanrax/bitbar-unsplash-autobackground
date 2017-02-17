#!/usr/bin/env bash
# <bitbar.title>AutoBackground Unsplash</bitbar.title>
# <bitbar.version>v1.o</bitbar.version>
# <bitbar.author>Andros Fenollosa</bitbar.author>
# <bitbar.author.github>tanrax</bitbar.author.github>
# <bitbar.desc>Autochange the wallpaper with an unsplash image</bitbar.desc>
echo '🖼'
echo '---'
echo 'Update | refresh=true'
curl --silent "http://www.google.es"
if [ $? -eq 0 ]; then
	curl --silent -L -o /Users/$USER/Pictures/background.jpg "https://source.unsplash.com/random"
	defaults write com.apple.desktop Background "{default = {ImageFilePath='/Users/$USER/Pictures/background.jpg'; };}"; killall Dock
fi
