{ config, pkgs, ... }:

{
  services = {
    printing.enable = true;
    flatpak.enable = true;
  };

  virtualisation = {
    waydroid.enable = true;
    podman = {
      enable = true;
    };
  };

  hardware = {
    steam-hardware.enable = true;
  };

  programs = {
    steam.enable = true;
    direnv.enable = true;
    neovim.enable = true;
    git.enable = true;
    adb.enable = true;
    nano.enable = true;
    neovim.withPython3 = true;
    htop.enable = true;
  };
}
