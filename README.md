# Dotfiles

These's are the dotfiles I use on my main pc.

## Installation

clone the git repo

```sh
git clone https://github.com/EiseZ/dotfiles.git
```

install stow (example for gentoo)

```sh
sudo emerge -av stow
```

make stow do it's thing

```sh
stow */
```

## Packages

There is also a list of the packages I have installed (manualy)

to install them (on gentoo)

```sh
sudo emerge -av $(cat world)
```

## Extra Files

Files: (name) -> (location in repo) -> (location on system)

-   xorg.conf -> X11/.config/X11/xorg.conf -> /etc/X11/xorg.conf
