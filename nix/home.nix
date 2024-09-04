{ config, pkgs, ... }:

{
  home.username = "cris";
  home.homeDirectory = "/home/cris";
  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = [];

  home.file = {};

  home.sessionVariables = {};

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.gpg-agent = {
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
  programs.yazi = {
    enable = true;
  };
  programs.starship = {
    enable = true;
  };
  programs.tmux = {
    enable = true;
  };
  programs.lazygit = {
    enable = true;
  };
  programs.thefuck = {
    enable = true;
  };
  programs.autojump = {
    enable = true;
  };
  programs.fzf = {
    enable = true;
  };
  # programs.cargo = {
  #   enable = true;
  # };
  programs.ripgrep = {
    enable = true;
  };

  #   enable = true;
  # };
  # programs.docker = {
  #   enable = true;
  # };
  # programs.docker-compose = {
  #   enable = true;
  # };
  # programs.kubectl = {
  #   enable = true;
  # };
  # programs.minikube = {
  #   enable = true;
  # };
  
  # Languages
  # programs.typescript = {
  #   enable = true;
  # };
  # programs.zig = {
  #   enable = true;
  # };
  # programs.go = {
  #   enable = true;
  # };
}
