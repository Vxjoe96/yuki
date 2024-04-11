{config, lib, pkgs, ...}:{

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
     kernelPackages = pkgs.linuxPackages_zen;
     kernelPatches = [
      {
        name = "NCT6775 driver";
        patch = null; # no patch needed if zen-kernel is enabled
        extraStructuredConfig = with lib.kernel; {
          I2C_NCT6775 = lib.mkForce yes;
        };
      };
    ];
  };

  systemd.services = {
  NetworkManager-wait-online.enable = false;
  systemd-udev-settle.enable = false;
  };

}