{inputs, pkgs, config, ...}:
{

  imports = [
    ./config.nix
    ./waybar.nix
    ../launchers/anyrun.nix
  ];

  home.packages = with pkgs; [
    hyprpicker
    hypridle
    hyprlock
    hyprpaper
    wofi
    grim
    slurp
    wl-clip-persist
    kitty
    pamixer
    dunst
    libnotify
    xwaylandvideobridge
    pavucontrol
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.tumbler
    polkit_gnome
    dconf
  ];
  
  wayland.windowManager.hyprland = {
    enable = true;
    systemd = {
      variables = ["--all"];
      extraCommands = [
        "systemctl --user stop graphical-session.target"
        "systemctl --user start hyprland-session.target"
      ];
    };
  };

    home.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    GDK_BACKEND = "wayland";
    MOZ_ENABLE_WAYLAND = "1";
    XDG_SESSION_TYPE = "wayland";
    SDL_VIDEODRIVER = "wayland";
    CLUTTER_BACKEND = "wayland";
  };
  home.file.".config/hypr/" = {
     source = ./config;
     recursive = true;   # link recursively
   };
  home.file.".config/hypr/Back.jpg".source = ./assets/Back.jpg;


  
  #xdg.configFile."hypr/hyprlock.conf".source = ./hyprlock.conf;
  #xdg.configFile."hypr/hypridle.conf".source = ./hypridle.conf;
  #xdg.configFile."hypr/hyprpaper.conf".source = ./hyprpaper.conf;
  #xdg.configFile."hypr/hyprland.conf".source = ./hyprland.conf;
  



 # xdg.configFile."hypr/hyprpaper.conf".text = ''
 #     preload = /home/me/amongus.png
 #     wallpaper = DP-1,/home/me/amongus.png
 #   '';
 # xdg.configFile."hypr/hypidle.conf".text = ''
 # general {
 #   lock_cmd = pidof hyprlock || hyprlock       # avoid starting multiple hyprlock instances.
 #   before_sleep_cmd = loginctl lock-session    # lock before suspend.
 #   after_sleep_cmd = hyprctl dispatch dpms on  # to avoid having to press a key twice to turn on the display.
 #   }
#
 # listener {
 #   timeout = 300                                # 5min
 #   on-timeout = hyprctl dispatch dpms off        # screen off when timeout has passed
 #   on-resume = hyprctl dispatch dpms on          # screen on when activity is detected after timeout has fired.
 #   }
#
 # listener {
 #   timeout = 330                              # 5.5min
 #   on-timeout = loginctl lock-session            # lock screen when timeout has passed
 #   }
#
#
#
 # listener {
 #   timeout = 3600                               # 30min
 #   on-timeout = systemctl suspend                # suspend pc
 #   }'';
#

}
