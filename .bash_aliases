# . ~/.bash_aliases

# commons
alias c='cd .. ; ls'
alias fp='find .'

alias ls='ls -G'
alias l='ls -1'
alias ll='ls -alh'
alias la='ls -a'
alias rr='reset'

# ack
alias g='ack '
alias gf='ack -g ' # to search file names

# git aliases
alias dif='git diff'
alias st='git status'
alias gg='git '
alias st='git st'
alias br='git br'
alias pull='git pull --rebase=preserve'
alias push='git push'
alias co='git co'
alias lg='git lg'
alias lgg='git log'
alias lgo='git log --oneline --decorate'
alias dif='git df --ignore-space-change '
alias difw='git diff --word-diff'
alias difc='git df --cached'
alias git-count='git shortlog -s -n'
alias tags='git tag -l | sort -t. -k 1,1n -k 2,2n -k 3,3n -k 4,4n'

# valipat
alias puma-command="echo 'rm -f /tmp/pid && bundle exec puma -C config/puma.rb ; reset'"
alias pp="echo 'rm -f /tmp/pid && bundle exec puma -C config/puma.rb ' | pbcopy"

alias localenv='eval $(docker-machine env valipat)'
alias f1env='eval $(docker-machine env feature1.valipat.com)'
alias f2env='eval $(docker-machine env feature2.valipat.com)'
alias f3env='eval $(docker-machine env feature3.valipat.com)'

# docker
alias dc='docker-compose'
alias dclean='docker container prune -f ;   docker volume prune -f '
alias d='docker '
alias dps='docker ps --format "{{.Names}} - {{.ID}} " | sort '

alias routing='sudo ifconfig bridge100 -hostfilter en4 && sudo /sbin/route -n add -net 172.16.0.0/12 -gateway $(docker-machine ip valipat)'

# Perso
alias jj='cd /Users/benoit/dev/jobboard'
alias bb='cd /Users/benoit/dev/blockchain/javascript'
alias connect='ssh root@137.74.43.108'
