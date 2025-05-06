{config,pkgs,...}:

{
  #DO A HOTSPOT WITH THIS COMMAND
  #nmcli device wifi hotspot ifname wlan0 ssid MyHotspot password MyStrongPassword
  networking.hostName = "omranpc";
  
  networking.networkmanager.enable = true;
  
  networking.wireless.networks = {
  enable = true;
  "Naser" = {
  psk = "naser123";
  };
  };
  
  #BLUETOOTH
  hardware.bluetooth = {
  enable = false;
  powerOnBoot = false;
  };
}
