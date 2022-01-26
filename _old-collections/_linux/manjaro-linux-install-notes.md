---
layout: post
title: Manjaro
description: My Initial Setup and notes.
categories: linux
---

# Install Manjaro

(Or the fun of don't having any plan to hang on saturday night)

### Requirements

- Download you favourite distro ISO. 
  - Mine is [Manjaro KDE Edition](https://manjaro.org/get-manjaro/).
- While downloading the ISO, go to the fridge or closest store to get a fresh beer! 
  - Don't forget your keys or phone before leaving the room... just in case ;)
- Create a bootable USB unit. 
  - I like [YUMI – Multiboot USB Creator](https://www.pendrivelinux.com/yumi-multiboot-usb-creator/)
  - Use the latest YUMI version available!

### Install Manjaro
Pretty straight forward

### Linux Post Install Tasks and Development Environment
First reboot and the touchpad doesn't work, fuck me! right? Just shutdown and power on again the computer

- Configure touchpad.
- Update the system, install/enable yaourt, etc: 
  - [Pacman tips](https://wiki.manjaro.org/index.php?title=Pacman_Tips)

### Install VIM editor

- Install VIM editor
~~~bash
[x@manjaro ~]$ sudo pacman -Syu vim
~~~
- Install vimrc, _The Ultimate Vim configuration_: [https://github.com/amix/vimrc](https://github.com/amix/vimrc)
```bash
[x@manjaro ~]$ git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
[x@manjaro ~]$ sh ~/.vim_runtime/install_awesome_vimrc.sh
Installed the Ultimate Vim configuration successfully! Enjoy :-)
```

### Install Terminator
```bash
[x@manjaro ~]$ sudo pacman -Syu terminator 
```

### Install Chromium
```bash
[x@manjaro ~]$ sudo pacman -S chromium 
```
### Install Spotify
```bash
[x@manjaro ~]$ yaourt -S spotify 
```
### Install Java JDK and IntelliJ
```bash
[x@manjaro ~]$ pacman -Ss jdk11
[x@manjaro ~]$ sudo pacman -Sy jdk11-openjdk
[x@manjaro ~]$ archlinux-java status
[x@manjaro ~]$ sudo archlinux-java set JAVA-X-JDK
[x@manjaro ~]$ yaourt -S intellij-idea-ultimate-edition
```
