#!/bin/bash

# 必要かも
# xcode-select --install

# Install Homebrew if not installed
if ! type brew >/dev/null 2>&1;  then
  echo "Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Check updates for brew
brew update
brew doctor

# Install packages
brew install git
brew install rmtrash
brew install python3
brew install chromedriver
brew install phantomjs
brew install zsh
brew install zplug
brew install fzy
brew install tree
brew install unar
brew install tmux
brew install wget
# brew install --with-x265 ffmpeg    # 重い

# Install fonts
brew tap caskroom/fonts
brew cask install font-source-code-pro
brew cask install font-hack

# Install cask
brew cask install coteditor
brew cask install google-chrome
brew cask install dropbox
brew cask install iterm2
brew cask install sourcetree
brew cask install slack
brew cask install skype
brew cask install flux
brew cask install --appdir=/Applications megasync
brew cask install adobe-acrobat-reader
brew cask install skitch
brew cask install android-file-transfer
brew cask install docker
brew cask install maczip4win
brew cask install firefox
brew cask install firealpaca
brew cask install vlc
brew cask install visual-studio-code
brew cask install onyx
brew cask install java
brew cask install emacs
# brew cask install mactex            # とっても重い
brew cask install texstudio
