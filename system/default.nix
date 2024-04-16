{ config, pkgs, lib, ... }: {

  imports = [
    ./hardware
    ./network
    ./programs
    ./nix
  ];

}