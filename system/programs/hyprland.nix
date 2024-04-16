{...}:
{

  environment.variables.NIXOS_OZONE_WL = "1";

  programs.hyprland.enable = true;

  services = {
    udisks2 ={
      enable = true;
    };
    cliphist.enable = true;
  };

}