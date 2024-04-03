{inputs, pkgs, config, ...}:{
   gtk = {
    enable = true;

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    theme = {
       name = "Colloid-Dark";
       package = pkgs.colloid-gtk-theme.override {
         themeVariants = ["grey"];
         colorVariants = ["dark"];
         tweaks = ["rimless" "black" "float"];
       };
    };

    cursorTheme = {
      name = "Quintom_Ink";
      package = pkgs.quintom-cursor-theme;
    };

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };

    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };

  home.sessionVariables.GTK_THEME = "Colloid-Dark";
}