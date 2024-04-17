{pkgs, ...}: {
  boot = {
    bootspec.enable = true;

    initrd = {
      systemd.enable = true;
      supportedFilesystems = ["ntfs"];
      verbose = false;
      kernelModules = [ "amdgpu" ];
    };

    # use latest kernel
    kernelPackages = pkgs.llinuxPackages_zen;

    consoleLogLevel = 3;
    kernelParams = [
      "quiet"
      "splash"
      "systemd.show_status=auto"
      "rd.udev.log_level=3"
      "log_level=3"
    ];

    loader = {
      # systemd-boot on UEFI
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 0;
    };

    plymouth.enable = true;
    environment.systemPackages = with pkgs; [
     nixos-icons
  ];

    tmp.cleanOnBoot = true;
    systemd.services = {
      NetworkManager-wait-online.enable = false;
      systemd-udev-settle.enable = false;
      };
  };

}
