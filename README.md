# HyprRay Dotfiles

Personal Arch Linux + Hyprland dotfiles.<br>
Built step by step, debugged manually, and designed for a clean Wayland workflow.<br>
(This is just my first time doing this. I will improve it further)<br>

--------------------------------------------------------------------------------------------------

# #Environment

* OS: Arch Linux<br>
* Compositor:Hyprland (Wayland)<br>
* Terminal: kitty<br>
* Shell: bash<br>
* Display Manager: SDDM<br>
* Bar: Waybar<br>
* Lockscreen: Swaylock<br>
* Logout Menu: Custom Script,Wlogout(running)<br>
* Wallpaper Daemon: Hyprpaper, Swww(running)<br>
* Notification Daemon: mako, SwayNC(running)<br>
* Bluetooth Daemon: bluez blues-utils<br>
* Bluetooth Manager: blueman<br>
* Network Daemon: NetworkManager<br>
* Network manager: network-manager-applet<br>
* Text Editor: nano, macro(either works)<br>
* Package Manager: pacman<br>
* AUR Helper: yay<br>

---------------------------------------------------------------------------------------------------

# #Required Packages

* Install (before) copying configs.

# ##Core
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
```

# ##Fonts

```bash
sudo pasman -S \
ttf-inter \
ttf-jetbrains-mono \
noto-fonts \
noto-fonts-emoji
```

# ##Utilities

```bash
sudo pacman -S \
git \
nano \
brightnessctl \
playerctl \
network-manager-applet \
bluez bluez-utils \
blueman
```

# ##Enable services

```
sudo systemctl enable sddm
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager
sudo systemctl enable bluetooth
sudo systemctl start bluetooth
```

* Then (Reboot)

# ##Known Assumptions

* User home is /home/ray (change everywhere in dotfiles with what u set your user to)
* Uses ~/.cache for runtime files
* Waybar Scripts are executable
* ---->Make Scripts if needed (do it with every .sh files present in dotfiles)
```bash
chmod +x path/to/script
```
* Example: `chmod +x ~/.config/waybar/scripts/*.sh` (for every scripts in ~/.config/waybar/scripts)
* Sorry for files management. Scripts are scaterred all over the dotfiles.
