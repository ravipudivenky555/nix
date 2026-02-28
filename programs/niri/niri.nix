{ pkgs, ... }:
{
  programs.niri.enable = true;
  programs.nm-applet.enable = true;
  programs.waybar.enable = true;
  programs.xwayland.enable = true;
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    xdgOpenUsePortal = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
  };
  environment.etc."niri/config.kdl".source = ./config.kdl;
  environment.systemPackages = with pkgs; [
    fuzzel
    networkmanagerapplet
    pavucontrol
    swaybg
    xwayland-satellite
  ];
}
