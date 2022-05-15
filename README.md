# .dotfiles

Configuration file for pretty much everthing.
Support both Sway & i3wm window manager.

Desktop environment apps: 
* Sway, swaylock OR i3-wm, i3lock-color
* zsh with prezto
* alacritty
* arc-gtk-theme, arc-icon-theme
* mako (sway) / dunst (i3)
* feh (i3)
* nautilus
* nm-applet
* waybar (sway) / polybar (i3)
* ranger
* kickoff (sway) / rofi (i3)
* nvim
* xorg-xfd, ttf-unifont, ttf-hack, ttf-font-awesome, awesome-terminal-fonts, siji-git 
* xrandr (i3)


Optional but usefull stuff to install:
base-devel, docker, gcolor2, gedit, gimp, git, htop, httpie, lm_sensors, meld, most, nvm, openssl, pavucontrol, peek, s-tui, scrot, tig, tmux, vlc


https://github.com/joshdick/onedark.vim
https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme

## Installation

```sh
# User config
dotbot -c dotbot.conf.yaml

# global config
cp wayland_enablement.sh /usr/local/bin/wayland_enablement.sh
cp sway-run /usr/local/bin/sway-run
cp etc/greetd/* /etc/greetd
```


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

