{pkgs, ...}: {
  users.users.joseph = {
    isNormalUser = true;
    shell = pkgs.bash;
    extraGroups = [
      "input"
      "libvirtd"
      "networkmanager"
      "plugdev"
      "video"
      "wheel"
    ];
  };
}