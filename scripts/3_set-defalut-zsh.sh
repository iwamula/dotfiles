#!/bin/bash

# change default shell to zsh
echo `which zsh` | sudo tee -a /etc/shells
chsh -s `which zsh`
