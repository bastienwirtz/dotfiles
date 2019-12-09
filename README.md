# .dotfiles

Configuration file for pretty much everthing. Desktop environment based on Archlinux, zsh, i3vm, polybar, rofi and termite.

![screenshot](screenshot.png)

Some configuration might need extra dependencies: 
* arc-gtk-theme, arc-icon-theme
* picom
* dunst
* feh
* i3-wm, i3lock-color
* nautilus
* nm-applet
* prezto
* polybar
* ranger
* rofi
* termite, termite-terminfo
* vim-colors-solarized
* xorg-xfd, ttf-unifont, ttf-hack, ttf-font-awesome, awesome-terminal-fonts, siji-git 
* xrandr
* zsh

Optional but usefull stuff to install:
android-tools, base-devel, caffeine, docker, gcolor2, gedit, gimp, git, htop, httpie, lm_sensors, meld, most, ntfs-3g, nvm, openssl, openvpn, pavucontrol, peek, s-tui, scrot, tig, tmux, vlc

## Prezto zsh install

```sh
setopt EXTENDED_GLOB
for rcfile in /usr/lib/prezto/runcoms/^README.md(.N); do\
  ln -s "$rcfile" "$HOME/.${rcfile:t}"\
done
```


## I3 Cheat sheet

In addition to usual keybinding here is some usefull extra: 

| Shortcut | Description |
| --- | --- |
| $mod+Ctrl+Left | Switch to previous workspace |
| $mod+Ctrl+Right | Switch to next workspace |
| $mod+Shift+Return | Open a floating terminal |
| $mod+Tab | Open window switcher |
| $mod+Shift+s | New ssh connection  |
| $mod+x | Open a console file manager |
| $mod+Shift+x | Open a graphical file manager |

