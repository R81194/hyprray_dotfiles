#HyprRay Dotfiles

Personal Arch Linux + Hyprland dotfiles.
Built step by step, debugged manually, and designed for a clean Wayland workflow.
(This is just my first time doing this. I will improve it further)

--------------------------------------------------------------------------------------------------

##Environment

OS: Arch Linux
Compositor:Hyprland (Wayland)
Terminal: kitty
Shell: bash
Display Manager: SDDM
Bar: Waybar
Lockscreen: Swaylock
Logout Menu: Custom Script,Wlogout(running)
Wallpaper Daemon: Hyprpaper, Swww(running)
Notification Daemon: mako, SwayNC(running)
Bluetooth Daemon: bluez blues-utils
Bluetooth Manager: blueman
Network Daemon: NetworkManager
Network manager: network-manager-applet
Text Editor: nano, macro(either works)
Package Manager: pacman
AUR Helper: yay

---------------------------------------------------------------------------------------------------

##Required Packages

#Install (before) copying configs.

###Core
```bash
sudo pacman -S \
hyprland \
waybar \
swww \
swaylock \
wlogout \
sddm \
polkit \
xdg-desktop-portal-hyprland \
wl-clipboard \
grim \
slurp \
pipewire \
pipewire-pulse \
wireplumber \
pulseaudio \
mako \
swaync

###Fonts

sudo pasman -S \
ttf-inter \
ttf-jetbrains-mono \
noto-fonts \
noto-fonts-emoji \

###Utilities

sudo pacman -S \
git \
nano \
brightnessctl \
playerctl \
network-manager-applet \
bluez bluez-utils \
blueman 

###Enable services

sudo systemctl enable sddm
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

#Then (Reboot)

###Known Assumptions

#User home is /home/ray (change everywhere in dotfiles with what u set your user to)
#Uses ~/.cache for runtime files
#Waybar Scripts are executable
#---->Make Scripts if needed (do it with every .sh files present in dotfiles)
chmod +x path/to/script
#Example: chmod +x ~/.config/waybar/scripts/*.sh (for every scripts in ~/.config/waybar/scripts)
#Sorry for files management. Scripts are scaterred all over the dotfiles.
