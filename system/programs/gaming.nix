{inputs, ...}: 
{
  imports = [
    inputs.nix-gaming.nixosModules.pipewireLowLatency
  ];
  
  programs = {
    steam = {
      enable = true;
      extraCompatPackages = with pkgs; [
        proton-ge-bin
      ];
      extest.enable = true;
    };
    
    gamescope.enable = true;

    gamemode = {
      enable = true;
      settings = {
        general = {
        softrealtime = "auto";
        renice = 15;
        };
      };
    };
  };
  # see https://github.com/fufexan/nix-gaming/#pipewire-low-latency
  services.pipewire.lowLatency.enable = true;
  
}