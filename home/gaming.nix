{inputs, pkgs, config, ...}:{
    home.packages = with pkgs; [
      steam
      vesktop
      gamescope
      mangohud
      bottles
      wine
      winetricks
    ];
}
