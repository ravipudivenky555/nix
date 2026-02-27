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
  };
  environment.etc."niri/config.kdl".source = ./config.kdl;
  environment.systemPackages = with pkgs; [
    fuzzel
    gnome-keyring
    networkmanagerapplet
    pavucontrol
    xwayland-satellite
  ];
}
