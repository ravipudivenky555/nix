{ pkgs, ... }:
{
  programs.niri = {
    enable = true;
    useNautilus = true;
  };
  programs.nm-applet.enable = true;
  programs.xwayland.enable = true;
  programs.yazi.enable = true;
  services.blueman.enable = true;
  services.power-profiles-daemon.enable = true;
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    xdgOpenUsePortal = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
  };
  environment.systemPackages = with pkgs; [
    kdePackages.dolphin
    fuzzel
    networkmanagerapplet
    noctalia-shell
    pavucontrol
    swaybg
    swayidle
    swaylock
    xwayland-satellite
  ];
}
