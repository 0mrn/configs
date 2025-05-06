{ config , pkgs, ...}:
let 
toggle = true; #toggle to enable something
in
{  programs.zsh = {
    enable = true;
    ohMyZsh = {
      enable = true;
      theme = "simple"; 
      plugins = [ "colored-man-pages" "sudo"];
    };
  };

nixpkgs.config.allowUnfree = true;
environment.systemPackages = with pkgs; [
  #apps
  vscode krita kdenlive steam virtualbox
  microsoft-edge warp ghostty cron
  kitty obs-studio chromium
  #CLI utils
  wget fzf vim fish btop zellij zsh neovim tmux git
  #CLI art commands
  neofetch cbonsai dotacat oh-my-zsh fortune tor-browser-bundle-bin onboard
  pfetch nitch htop  fastfetch cowsay peaclock hollywood lolcat cava nerdfetch
  #fonts
  nerdfonts
  #langs
  python3 #python
  nim nimble #nim
  #depencieses
  #for hyprland
  wofi waybar brightnessctl
];

services.xserver = {
  enable = false;
  desktopManager.budgie.enable = false;

};
programs.sway.enable = false;
services.desktopManager.plasma6.enable = false;
programs.hyprland.enable = true;
programs.waybar.enable = true;
services.displayManager.sddm.wayland.enable = true;
#LOGNIN MANAGERS
services.displayManager.sddm.enable = true;
services.xserver.displayManager.gdm.enable = false;
# Configure keymap in X11
services.xserver.xkb = {
  layout = "us";
  variant = "";
};
}
