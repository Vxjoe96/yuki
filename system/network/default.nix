{lib, ...}:
{

  networking.networkmanager = {
    enable = true;
    dns = "system-resovled";
    wifi.powersave = true;
    enableIPv6 = false;
  };

  services = {
    openssh = {
      enable = true;
      settings.useDns = true;
    };

    resovled.enable = true;

  };

  systemd.services.NetworkManager-wait-online.enable = lib.mkforce false;
}