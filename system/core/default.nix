{lib, ...}:
{

  imports = [
    ./boot.nix
    ./security.nix
    ./users.nix
  ];

  time.timeZone = lib.mkDefault "America/Denver";
  time.hardwareClockInLocalTime = lib.mkDefault true;

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };
  
  system.stateVersion = lib.mkDefault "23.11";

  zramSwap = {
    enable = true;
    algorithm = "zstd";
  };

}