{inputs, pkgs, config, ...}:{
    home.packages = with pkgs; [
      firefox
      google-chrome
      spotify
      vscode
    ];
}
