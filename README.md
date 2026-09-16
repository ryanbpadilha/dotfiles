# Arch Linux

## Required Packages for Your Configuration

1. Desktop Environment & Window Manager Core
    - sway: The Wayland compositor.
    - swayidle & swaylock: Screen idle detection and screen locker used in your idle timeout configuration.
    - swaynag: Exit prompt prompt overlay for session logout.
    - waybar: Custom status bar replacement for swaybar.
    - wmenu: Minimal application launcher mapped to $menu ($mod+d).
    - foot: Main terminal emulator configured with custom colors and padding.

2. Keybindings & Desktop Utilities
    - grim: Screenshot utility bound to the Print key.
    - slurp: Interactive area selector for region screenshots.
    - wl-clipboard: Provides wl-copy and wl-paste for region screenshot copying and Neovim system clipboard access.
    - brightnessctl: Laptop backlight control mapped to brightness keys.
    - playerctl: Control daemon mapped to play/pause, next, and previous media keys.
    - libpulse (or pulseaudio / pipewire-pulse): Audio control utilities providing pactl for volume adjustment keybindings.
    - mako: Lightweight notification daemon configured to launch on startup.
    - network-manager-applet & blueman: System tray applets (nm-applet, blueman-applet).

3. Text Editing & Visuals
    - neovim: Primary editor running your custom Lua config.
    - ttf-jetbrains-mono-nerd: Monospace font specified in your foot terminal and waybar CSS configurations.

### Installation Command

Install all required packages at once using pacman:

```bash
sudo pacman -S --needed sway swayidle swaylock waybar wmenu foot grim slurp wl-clipboard brightnessctl playerctl libpulse mako network-manager-applet blueman neovim ttf-jetbrains-mono-nerd
```

## Source bash

```bash
source ~/.bashrc
```

## Install yay

```bash
sudo pacman -Syu && sudo pacman -S --needed base-devel git && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si && cd .. && rm -rf yay-bin
```
