{inputs, pkgs, config, ...}:

{
   gtk = {
    enable = true;

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    theme = {
       name = "Flat-Remix-GTK-Grey-Darkest";
       package = pkgs.flat-remix-gtk
    };

    font = {
      name = "Jetbrainsmono";
      size = 11;
    };
  };
}
