{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./myhardware.nix
      ./networking.nix
      ./users.nix
      ./software.nix
    ];

  # Bootloader.
  #systemd
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  #grub
  #boot.loader.grub.enable = true;
  #boot.loader.grub.device = "/dev/sda";
  #boot.loader.grub.useOSProber = true;
  

  # /etc/nixos/configuration.nix

  system.autoUpgrade = {
      enable = true;
      dates = "monthly";
      allowReboot = false;
  };
  #storage optimzation
   #nix.optimise.automatic = true;
   #nix.optimise.dates = "daily";
   #nix.settings.auto-optimise-store = true;

  #auto cleanup
  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-older-than 5d";
  };
  #nix.gc.automatic = true;
  #nix.gc.dates = "daily";
  #nix.gc.options = "--delete-older-than 5d";
  #
  
  #ENABLE NIX FLAKES
  #nix.settings.experimental-features = ["nix-command" "flakes"];
  
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  
  hardware.bluetooth.enable = false; networking.networkmanager.enable = true;
 
  # Set your time zone.
  time.timeZone = "Asia/Dubai";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "ar_AE.UTF-8";
    LC_IDENTIFICATION = "ar_AE.UTF-8";
    LC_MEASUREMENT = "ar_AE.UTF-8";
    LC_MONETARY = "ar_AE.UTF-8";
    LC_NAME = "ar_AE.UTF-8";
    LC_NUMERIC = "ar_AE.UTF-8";
    LC_PAPER = "ar_AE.UTF-8";
    LC_TELEPHONE = "ar_AE.UTF-8";
    LC_TIME = "ar_AE.UTF-8";
  };

  # Enable the X11 windowing system.
  #services.displayManager.ly.enable = true;
  # Enable the KDE Plasma Desktop Environment.



  #PRINTING
  services.printing.enable = false;

  # Install some apps.
  #programs.{app name}.enable = false;
  #programs.zsh.enable = true;

  system.stateVersion = "24.11";

}
