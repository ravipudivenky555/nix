{ config, pkgs, ... }:
let
  mkSymlink = path: config.lib.file.mkOutOfStoreSymlink path;
in
{
  home.stateVersion = "26.05";

  xdg.configFile."nvim".source = mkSymlink ./configs/nvim;
  xdg.configFile."niri".source = mkSymlink ./configs/niri;
  xdg.configFile."kitty".source = mkSymlink ./configs/kitty;
}
