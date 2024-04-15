{ config, pkgs, lib, ...}:

  {
      services = {
    udisks2 ={
      enable = true;
    };
    cliphist.enable = true;
  };
     security.rtkit.enable = true;
      services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      wireplumber.enable = true;
      };

  }
