{inputs, pkgs, config, ...}:
{
  programs = {
    waybar = {
      enable = true;
      systemd = {
        enable = true;
        target = "hyprland-session.target";
      };
      settings = [{
    layer = "top";
    spacing = 4;
    modules-left = [
       "hyprland/window"
    ];
    modules-center = [
      "clock"
    ];
    modules-right = [
      "tray"
    ];
    
    "hyprland/window" = {
        format = "{}";
    };

    tray = {
        spacing = 10;
    };

    clock = {
        interval = 60;
        format = "{:%I:%M %p}";
        max-length = 25;
    };
      }];
      style = 
      ''
        * {
        font-family: jetbrainsmono;
        font-weight: bold;
        font-size: 13px;
        }   

        window#waybar {
        background-color: transparent;
        color: #ffffff;
        }

        #clock,
        #window,
        #tray
        {

            padding-top: 10px;

        }

        #window {
            padding-left: 20px;
        }
      '';
      };
    };
}