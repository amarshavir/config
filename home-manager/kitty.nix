{ pkgs, ... }: {
  programs.kitty = {
    enable = true;
    settings = {
      foreground = "#a9b1d6";
      background = "#1a1b26";
      color0 = "#414868";
      color8 = "#414868";
      color1 = "#f7768e";
      color9 = "#f7768e";
      color2 = "#73daca";
      color10 = "#73daca";
      color3 = "#e0af68";
      color11 = "#e0af68";
      color4 = "#7aa2f7";
      color12 = "#7aa2f7";
      color5 = "#bb9af7";
      color13 = "#bb9af7";
      color6 = "#7dcfff";
      color14 = "#7dcfff";
      color7 = "#c0caf5";
      color15 = "#c0caf5";

      background_opacity = "0.9";
      dynamic_background_opacity = "yes";
    };

    extraConfig = ''

      # Additional kitty settings
      confirm_os_window_close 0
      copy_on_select yes
      clipboard_control write-clipboard read-clipboard write-primary read-primary
    '';
  };
}
