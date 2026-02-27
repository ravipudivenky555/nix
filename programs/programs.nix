{ pkgs, ... }:
{
  programs.appimage = {
    enable = true;
    binfmt = true;
  };
  programs.firefox.enable = true;
  programs.git = {
    enable = true;
    lfs.enable = true;
  };
  programs.gamemode.enable = true;
  programs.gamescope.enable = true;
  programs.java.enable = true;
  programs.nix-ld.enable = true;
  programs.steam.enable = true;
  programs.virt-manager.enable = true;

  fonts.enableDefaultPackages = true;
  fonts.fontDir.enable = true;
  fonts.packages =
    with pkgs;
    [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-color-emoji
      noto-fonts-emoji-blob-bin
      noto-fonts-monochrome-emoji
    ]
    ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);

  virtualisation.libvirtd = {
    enable = true;
    qemu.package = pkgs.qemu_full;
  };
  virtualisation.spiceUSBRedirection.enable = true;

  environment.systemPackages = with pkgs; [
    brave
    cargo
    chromium
    clang
    discord
    gcc
    gh
    go
    google-chrome
    heroic
    kdePackages.discover
    kitty
    lutris
    mpv
    nodejs
    onlyoffice-desktopeditors
    quickemu
    quickshell
    rustc
    unzip
    uv
    wget
    zip
  ];

}
