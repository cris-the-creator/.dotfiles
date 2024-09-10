{ config, pkgs, ... }:

{
  home.username = "cris";
  home.homeDirectory = "/home/cris";
  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = [];
  home.sessionVariables = {};

  home.file = {
    ".bash_aliases".source = ~/.dotfiles-private/bash/.bash_aliases;
    ".bash_customs".source = ~/.dotfiles-private/bash/.bash_customs;
    ".tmux.conf".source = ~/.dotfiles/tmux/.tmux.conf;
    ".wezterm.lua".source = ~/.dotfiles/.wezterm.lua;
    ".config/lazygit/".source = ~/.dotfiles/lazygit;
    ".config/nvim/".source = ~/.dotfiles/nvim;
    ".config/i3/".source = ~/.dotfiles/i3;
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };
  programs.git = {
    enable = true;
    userName = "cris-the-creator";
    userEmail = "contact@corneascorner.dev";
  };
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  };
  programs.yazi = { enable = true; };
  programs.starship = { enable = true; };
  programs.lazygit = { enable = true; };
  programs.thefuck = { enable = true; };
  programs.autojump = { enable = true; };
  programs.fzf = { enable = true; };
  programs.ripgrep = { enable = true; };
}
