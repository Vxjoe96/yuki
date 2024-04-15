{inputs, pkgs, config, ...}:{
    home.packages = with pkgs; [
      steam
      discord
      gamescope
      mangohud
      bottles
      wine
      winetricks
    ];
}
