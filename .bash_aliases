# . ~/.bash_aliases

echo "loading aliases"

# commons
alias c='cd .. ; ls'
alias a='ack '

# Using LSD https://github.com/Peltoche/lsd
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# GIT aliases : check Zsh git plugin - https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git

# docker
alias dc='docker-compose'
alias dclean='docker container prune -f ;   docker volume prune -f '
alias d='docker '
alias dps='docker ps --format "{{.Names}} - {{.ID}} " | sort '
