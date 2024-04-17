{ config, pkgs, lib, ... }: {

  imports = [
    ./core
    ./nix
    ./programs
    ./hardware
  ];

}
