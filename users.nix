{ config, pkgs, ... }:
{
  users.users.omran = {
    isNormalUser = true;
    description = "omran";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      home-manager
    ];
  };
}