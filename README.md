# Arch Linux

### Installation Command

Install all required packages at once using pacman:

```bash
sudo pacman -Syu \
    racket `# Programming language and environment` \
    base-devel `# Development tools (make, gcc, patch, etc.)` \
    git `# Version control system` \
    nodejs `# JavaScript runtime environment` \
    npm `# Node.js package manager` \
    pnpm `# Fast, disk space efficient package manager` \
    blueman `# Bluetooth manager GTK applet` \
    gnome-clocks `# Clock app with timer, alarm, and stopwatch` \
    network-manager-applet `# GTK applet for NetworkManager` \
    ttf-jetbrains-mono-nerd `# JetBrains Mono font with Nerd Font icons` \
    noto-fonts-cjk `# Google Noto CJK (Chinese, Japanese, Korean) fonts`
    proton-vpn-cli `# VPN \
```

## pi agent
```bash
npm install -g --ignore-scripts @earendil-works/pi-coding-agent
```

## Source bash

```bash
source ~/.bashrc
```

## Install yay

```bash
sudo pacman -Syu && sudo pacman -S --needed base-devel git && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si && cd .. && rm -rf yay-bin
```
