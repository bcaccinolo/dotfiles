# . ~/.bash_aliases

# commons
alias c='cd .. ; ls'
alias fp='find .'

# alias ls='ls -G'
# alias l='ls -1'
# alias ll='ls -alh'
# alias la='ls -a'

# Using LSD https://github.com/Peltoche/lsd
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# ack
alias a='ack '

# GIT aliases : check Zsh git plugin - https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git



# valipat
alias puma-command="echo 'rm -f /tmp/pid && bundle exec puma -C config/puma.rb ; reset'"
alias pp="echo 'rm -f /tmp/pid && bundle exec puma -C config/puma.rb ' | pbcopy"

alias localenv='eval $(docker-machine env valipat)'
alias f1env='eval $(docker-machine env feature1.valipat.com)'
alias f2env='eval $(docker-machine env feature2.valipat.com)'
alias f3env='eval $(docker-machine env feature3.valipat.com)'

# docker
alias dclean='docker container prune -f ;   docker volume prune -f '
alias d='docker '
alias dps='docker ps --format "{{.Names}} - {{.ID}} " | sort '

alias routing='sudo ifconfig bridge100 -hostfilter en4 && sudo /sbin/route -n add -net 172.16.0.0/12 -gateway $(docker-machine ip valipat)'

# Perso
alias jj='cd /Users/benoit/dev/jobboard'
alias bb='cd /Users/benoit/dev/blockchain/javascript'
alias connect='ssh root@137.74.43.108'
