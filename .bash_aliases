
# . ~/.bash_aliases

# commons
alias fp='find .'
alias f='ls -G'
alias ls='ls -G'
alias l='ls -1'
alias ll='ls -alh'
alias la='ls -a'
alias c='cd .. ; ls'
alias rr='reset'

# rails
alias cdapp='cd app'
alias cdmodel='cd app/models'
alias cdviews='cd app/views'
alias cdcontroller='cd app/controllers'
alias b='reset; bundle'
alias be='bundle exec'

# ack
alias g='ack '
alias gf='ack -g ' # to search file names

# git aliases
alias master='co master; pull'
alias st='git st'
alias br='git br'
alias bre='git bre'
alias pull='git pull --rebase=preserve'
alias push='git push'
alias ci='git ci'
alias co='git co'
alias lg='git lg'
alias lgg='git log'
alias lgo='git log --oneline --decorate'
alias dif='git df --ignore-space-change '
alias difw='git diff --word-diff'
alias difc='git df --cached'
alias git-count='git shortlog -s -n'
alias tags='git tag -l | sort -t. -k 1,1n -k 2,2n -k 3,3n -k 4,4n'

