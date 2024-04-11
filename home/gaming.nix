{inputs, pkgs, config, ...}:{
    home.packages = with pkgs; [
      steam
      discord
      gamescope
      magohud
      bottles
      wine
      winetricks
    ];
}