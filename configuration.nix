{ config, pkgs, ... }:

boot = boot.loader.grub

{
  imports =
    [
      ./hardware-configuration.nix
      ./desktop.nix
      ./services.nix
    ];

users = {
  users = {neurohost = {
    isNormalUser = true;
    description = "neurohost";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; []
  }}
  }


environment.systemPackages = with pkgs; [
                                       #important  
vim 
wget
git
curl
neofetch
neovim
vscodium
nano
firefox-esr
python3
coreutils-full
gparted

                                   #proparotiry
discord
spotify
obs-studio
zoom-us
                                              ];


boot = {
  enable = true;
  device = "/dev/sda";
  useOSProber = true;
  };




system.stateVersion = "23.11"; 

}
