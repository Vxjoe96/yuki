{ pkgs, config, lib, ...}:

  {

    networking = {
          networkmanager.enable = true; 
          enableIPv6 = false;
      };
  services.openssh.enable = true;
    
  }