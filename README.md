dotfiles

# Config files

## Rubocop global

```
ln -s ~/dotfiles/rubocop.yml ~/.rubocop.yml
```

## Git

### Git config (.gitconfig)

This file is sensible cause it contains your email. So this file is not symlinked.

```
cp ~/dev/dotfiles/gitconfig ~/.gitconfig
```

You will have to edit the user section:
```
[user]
	name = John Doe
	email = john.doe@nypd.com
```

### Global gitignore

```
ln -s ~/dotfiles/git_global_gitignore ~/.gitignore
```

## .zshrc

```bash
rm ~/.zshrc
ln -s ~/dev/dotfiles/zshrc.sh ~/.zshrc
```

## Emacs 

```shell
rm -rf ~/.spacemacs 
ln -s ~/dev/dotfiles/spacemacs ~/.spacemacs
```

# install VSCode settings on Mac

```bash
cp ~/Library/Application\ Support/Code/User/snippets/* ~/dev/dotfiles/.config/Code/User/snippets

cp ~/Library/Application\ Support/Code/User/keybindings.json ~/dev/dotfiles/.config/Code/User/keybindings.json

cp ~/Library/Application\ Support/Code/User/settings.json ~/dev/dotfiles/.config/Code/User/settings.json

 cp ~/Library/Application\ Support/Code/User/vsicons.settings.json ~/dev/dotfiles/.config/Code/User/vsicons.settings.json
```

Alternatively, they can be cloned to the User folder of the VSCode installation on your platform:

- Mac: `~/Library/Application Support/Code/User/`
- Linux: `~/.config/Code/User/settings.json`


# Logitech Marble Mouse config

file: /etc/X11/xorg.conf.d/10-libinput.conf

```
# Section added for scroll with Marble Mouse
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
# Left Hand - Section added for scroll with Marble Mouse
Section "InputClass"
  Identifier      "Marble Mouse"
  MatchProduct    "Logitech USB Trackball"
  Driver          "libinput"
  Option          "ButtonMapping" "3 2 1 4 5 6 7 0 0"
  Option          "ScrollMethod" "button"
  Option          "ScrollButton" "9"
  Option          "MiddleEmulation" "on"
EndSection

```

