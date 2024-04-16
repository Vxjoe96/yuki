{inputs, pkgs, config, ...}:
{

  programs.kitty = {
    enable = true;
    settings = {
      enable_audio_bell = false;
      confirm_os_window_close = 0;
      update_check_interval = 0;
    };
  };
}