{config, lib, ...}:

  {

    nix.settings = {
      auto-optimise-store = true;
      experimental-features = [ "nix-command" "flakes" ];
      };

  nix.gc = {
          dates = "weekly";
          automatic = true;
          options = "--delete-generations +3";
      };

  nixpkgs = {
    config.allowUnfree = true;
    config.permittedInsecurePackages = [
      "electron-25.9.0"
    ];
  };
  
}