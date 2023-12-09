{ config, pkgs, ... }:

xserver = services.xserver.desktopManager
x = services.xserver
pipewire = services.pipewire

xserver = {
  gdm = {
    enable = true;
    }

  gnome = {
    enable = true;
    debug = true;
    }
  }

environment = {
  gnome = {
    excludePackages = []
    }
  }

nixpkgs = {
  config.allowUnfree = true;
  }

x = {
  enable = true;
  layout = "us";
  xkbVariant = "";
  }

time = {
  timeZone = "Asia/Kolkata";
  }

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
  }
    }

pipewire = {
  enable = true;
  package
  socketActivation = true;
  pulse.enable = true;
  jack.enable = true;
  alsa.enable = false;
  alsa.support32Bit = false;

  }

