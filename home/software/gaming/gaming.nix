{inputs, pkgs, config, ...}:{
    home.packages = with pkgs; [
      vesktop
      mangohud
      bottles
      wine
      winetricks
    ];
}
