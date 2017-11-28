dotfiles
========


config files


installation: git clone URL .

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

file: /usr/share/X11/xorg.conf.d/40-libinput.conf

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

