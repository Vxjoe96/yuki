{inputs, pkgs, config, ...}:{
    home.packages = with pkgs; [
      steam
      discord
      gamescope
      magohud
      bottles
      wine
      winetricks
    ];
    hardware.opengl.driSupport = true;
    # For 32 bit applications
    hardware.opengl.driSupport32Bit = true;
    hardware.opengl.extraPackages = with pkgs; [
      rocm-opencl-icd
      rocm-opencl-runtime
    ];
}