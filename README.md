dotfiles
========


config files


installation: git clone URL .

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

