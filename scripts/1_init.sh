#!/bin/bash

# Don't create .DS_Store
defaults write com.apple.desktopservices DSDontWriteNetworkStores True

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "
