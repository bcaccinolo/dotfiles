Dotfiles

# Config files

## Using GNU Stow

```
stow -v 2 -d ~/dev/dotfiles -t ~ --dotfiles tig
stow -v 2 -d ~/dev/dotfiles -t ~ --dotfiles ack
stow -v 2 -d ~/dev/dotfiles -t ~ --dotfiles emacs-from-scratch
stow -v 2 -d ~/dev/dotfiles -t ~ --dotfiles spacemacs
stow -v 2 -d ~/dev/dotfiles -t ~ --dotfiles zsh
stow -v 2 -d ~/dev/dotfiles -t ~ --dotfiles ruby
stow -v 2 -d ~/dev/dotfiles -t ~ --dotfiles xmodmap
stow -v 2 -d ~/dev/dotfiles -t ~/.config --dotfiles i3wm
```

## Git

### Git config (.gitconfig)

This file is sensible cause it contains your email. So this file is not symlinked.

```
stow -v 2 -d ~/dev/dotfiles -t ~ --dotfiles git
```

You will have to edit the user section:
```
[user]
	name = John Doe
	email = john.doe@nypd.com
```

# Logitech Marble Mouse config

file: /etc/X11/xorg.conf.d/10-libinput.conf

```
# Right hand - section added for scroll with Marble Mouse
Section "InputClass"
  Identifier      "Marble Mouse"
  MatchProduct    "Logitech USB Trackball"
  Driver          "libinput"
  Option          "ButtonMapping" "1 2 3 4 5 6 7 0 9"
  Option          "ScrollMethod" "button"
  Option          "ScrollButton" "8"
  Option          "MiddleEmulation" "on"
EndSection
```

```
# Left hand - section added for scroll with Marble Mouse
Section "InputClass"
  Identifier      "Marble Mouse"
  MatchProduct    "Logitech USB Trackball"
  Driver          "libinput"
  Option          "ButtonMapping" "3 8 1 4 5 6 7 2 0"
  Option          "ScrollMethod" "button"
  Option          "ScrollButton" "9"
  Option          "MiddleEmulation" "on"
EndSection
```
