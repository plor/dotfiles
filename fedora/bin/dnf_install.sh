#!/bin/bash
# general tools
sudo dnf install -y neovim stow zsh zsh-syntax-highlighting zsh-autosuggestions
sudo dnf install alacritty mutt pass dnf-plugins-core

# hyprland stuff
sudo dnf -y copr enable solopasha/hyprland
sudo dnf install -y hyprland hyprpaper hypridle hyprlock hyprpanel
sudo dnf install -y hyprsunset hyprshot hyprpanel waybar wob mako

# hyprlock dependencies
sudo dnf install -y cmake gcc-c++ mesa-libEGL-devel hyprwayland-scanner-devel
