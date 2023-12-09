{ config, pkgs, ... }:

s=services

s = {
  printing.enable = true;
  flatpak.enable = true;
  }

virtualisation = {
  podman = {
    enable = true;
    }
  }

