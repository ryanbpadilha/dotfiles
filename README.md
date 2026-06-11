# Arch Linux

Dependencies

## Install necessary dependencies

```
sudo pacman -Syu && sudo pacman -S xorg-xrandr unzip curl
```

## source bash

```
source ~/.bashrc
```

## Install yay

```
sudo pacman -Syu && sudo pacman -S --needed base-devel git && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si && cd .. && rm -rf yay-bin
```

## Install flutter

```
yay -S flutter-bin
```



