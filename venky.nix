{ config, pkgs, ... }:
let
  mkSymlink = path: config.lib.file.mkOutOfStoreSymlink path;
in
{
  home.stateVersion = "26.05";

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    defaultEditor = true;
    extraPackages = with pkgs; [
      fzf
      luajitPackages.lua-lsp
      nil
      nixfmt
      ripgrep
    ];
  };
  xdg.configFile."nvim".source = mkSymlink ./configs/nvim;
  xdg.configFile."kitty".source = mkSymlink ./configs/kitty;
}
