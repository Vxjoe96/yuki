{config, lib, pkgs, ...}:

{

  boot = {
    loader = {
      systemd-boot.enable = true;
        timeout = 0;
    };
     initrd.verbose = false;
     initrd.kernelModules = [ "amdgpu" ];
     kernelPackages = pkgs.linuxPackages_zen;
     kernelParams = [ "fastboot" "quiet" "log_level=3" "systemd.show_status=auto" "splash" "udev.log_level=3"];
     consoleLogLevel = 0;
  };

  systemd.services = {
  NetworkManager-wait-online.enable = false;
  systemd-udev-settle.enable = false;
  };

}