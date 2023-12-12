{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./desktop.nix
    ./service.nix
  ];

  users.users.neurohost = {
    isNormalUser = true;
    description = "neurohost";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  environment.systemPackages = with pkgs; [
      wget2
      curl
      neofetch
      vscodium-fhs
      firefox-esr
      coreutils-full
      gparted

      discord
      spotify
      obs-studio
      zoom-us
    ];

  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
    useOSProber = true;
  };

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "23.11";
}
