{inputs, pkgs, config, ...}:{
    home.packages = with pkgs; [
      firefox
      spotify
      vscode
    ];
}