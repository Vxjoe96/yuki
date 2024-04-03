{inputs, pkgs, config, ...}:
{
  imports = [
    ./gaming.nix
    ./gtk.nix
    ./hyprland/hyprland.nix
  ];
  
  home = {
    username = "joseph";
    homeDirectory = "/home/joseph";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}