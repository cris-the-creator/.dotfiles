#!/bin/sh

# install nix
curl -L https://nixos.org/nix/install | sh -s -- --daemon

# install home-manager
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install

# move nix settings
rm /etc/nix/nix.conf
ln -sf "/etc/nix/nix.conf" ~/.dotfiles/nix/nix.conf

rm ~/.config/home-manager/home.nix
ln -sf ~/.dotfiles/nix/home.nix ~/.config/home-manager/home.nix

# install packages
home-manager switch
