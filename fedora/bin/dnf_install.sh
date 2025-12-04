#!/bin/bash
# general tools
sudo dnf install -y neovim stow zsh zsh-syntax-highlighting zsh-autosuggestions
sudo dnf install -y alacritty mutt pass dnf-plugins-core pipewire git-delta
sudo dnf install -y vimb just

# hyprland stuff
sudo dnf -y copr enable solopasha/hyprland
sudo dnf install -y hyprland hyprpaper hypridle hyprlock hyprpanel
sudo dnf install -y hyprsunset hyprshot hyprpanel waybar wob mako

# hyprlock dependencies
sudo dnf install -y cmake gcc-c++ mesa-libEGL-devel hyprwayland-scanner-devel

# mullvad
sudo dnf config-manager -y addrepo --from-repofile=https://repository.mullvad.net/rpm/beta/mullvad.repo
sudo dnf install -y mullvad-vpn
