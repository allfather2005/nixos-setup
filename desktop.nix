{ config, pkgs, ... }:

{
  services.xserver = {
    layout = "us";
    xkbVariant = "";
    enable = true; 
    displayManager = {
      sddm = { enable = true; };
    };
    
    desktopManager = {
      plasma5 = { enable = true; };
    };
  };

  services = {
    pipewire = {
      enable = true;
      };
    };

  environment = {
    plasma5 = {
      excludePackages = [];
      };
    };

  time.timeZone = "Asia/Kolkata";

  i18n = {
    defaultLocale = "en_IN";
    extraLocaleSettings = {
      LC_ADDRESS = "en_IN";
      LC_IDENTIFICATION = "en_IN";
      LC_MEASUREMENT = "en_IN";
      LC_MONETARY = "en_IN";
      LC_NAME = "en_IN";
      LC_NUMERIC = "en_IN";
      LC_PAPER = "en_IN";
      LC_TELEPHONE = "en_IN";
      LC_TIME = "en_IN";
    };
  };

  networking = {
    networkmanager = {
      enable = true;
      };
    };

  hardware = {
    bluetooth = {
      enable = true;
      };
    };


}

