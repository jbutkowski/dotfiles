#!/bin/sh

# See Nerd Fonts docs
# - https://github.com/ryanoasis/nerd-fonts/blob/master/readme.md

set -e

mkdir -p ~/.local/share/fonts

cd ~/.local/share/fonts && curl -fLo "Source Code Pro for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete.ttf

fc-cache -vf ~/.local/share/fonts