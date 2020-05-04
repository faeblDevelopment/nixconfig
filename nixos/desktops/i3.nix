{ pkgs, ... }:
{
  services.xserver = {
    displayManager.session = [
      {
        manage = "window";
        name = "i3";
        start = ''
          ~/.xsession
        '';
      }
    ];
    enable = true;
    layout = "de";

    desktopManager = {
      default = "none";
      xterm.enable = false;
    };

  };
}
