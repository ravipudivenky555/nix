{ config, pkgs, ... }:
let
  mkSymlink = path: config.lib.file.mkOutOfStoreSymlink path;
in
{
  home.stateVersion = "25.11";

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
  xdg.configFile."niri".source = mkSymlink ./configs/niri;
  xdg.configFile."kitty".source = mkSymlink ./configs/kitty;
}
