{
    
    description = "Joesph's NixOs Config";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

        home-manager = {
            url = "github:nix-community/home-manager";
            input.nixpkgs.follows = "nixpkgs";
        };

        #Hyprland 
        hyprland = {
            url = "github:hyprwm/Hyprland";
            input.nixpkgs.follows = "nixpkgs"
        };

        hyprpaper.url = "github:hyprwm/hyprpaper";
        hyprlock.url = "github:hyprwm/hyprlock";
        hypridle.url = "github:hyprwm/hypridle";
        xdg-portal-hyprland.url = "github:hyprwm/xdg-desktop-portal-hyprland";
        
        anyrun = {
            url = "github:Kirottu/anyrun";
            inputs.nixpkgs.follows = "nixpkgs";
        };


    };

    outputs = {self, ...}@inputs:
        let 
            system = "x86_64-linux";
            pkgs = nixpkgs.legacyPackages.${system};
        in 
        {
            #Gaming-Desktop ##use the code snippet to make differnt configs for hosts 
            nixosConfigurations = {
                GamingDesktop = nixpkgs.lib.nixosSystem {
                    inherit system;
                    extraSpecialArgs = {inherit inputs;};
                    modules = [
                        ./system
                        ./hardware-configuration.nix

                        #home-manager.nixosModules.home-manager
                        #{
                        #    home-manager.useGlobalPkgs = true;
                        #    home-manager.useUserPackages = true;
                        #    home-manager.users.joseph = import ./home/default.nix;

                            # Optionally, use home-manager.extraSpecialArgs to pass
                            # arguments to home.nix
                        #}
                    ];
                };
            };
        };
}
