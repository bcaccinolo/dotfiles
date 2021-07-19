Config

# Dotfiles files

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
stow -v 2 -d ~/dev/dotfiles -t ~/.config --dotfiles dunst
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

La documentation pour la config est sur Drive dans Notes