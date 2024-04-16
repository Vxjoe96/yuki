{inputs, pkgs, config, ...}:
{
  imports = [
    ./wm/hyprland
    ./terminal
    ./software/browsers/firefox.nix
    ./software/browsers/chrome.nix
    ./software/gaming
    ./software/media/spotify.nix
    ./editors/vscode
    ./gtk.nix
  ];
  
  home = {
    username = "joseph";
    homeDirectory = "/home/joseph";
    stateVersion = "23.11";
  };

  programs.home-manager.enable = true;
}