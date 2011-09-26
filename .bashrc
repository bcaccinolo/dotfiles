
PATH=/usr/local/bin:/usr/X11/bin:/usr/local/mysql/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
export SVN_EDITOR=vim
export EDITOR=vim

# RVM configuration
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
rvm use ruby-1.9.2-p290 1> /dev/null

# MacPorts Bash shell command completion
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  .  /usr/local/etc/bash_completion.d/git-completion.bash
fi

export HISTSIZE=10000

alias www="cd /Library/WebServer/Documents/"

alias ls='ls -G'
alias la='ls -a'
alias c='cd ..'
alias cdapp='cd app'
alias ll='ls -al'

alias tt='tree -C -L 1'
alias tt2='tree -C -L 2'
alias tt3='tree -C -L 3'

alias g='ack '
alias mm='mate .'

# git aliases
alias st='git st'
alias br='git br'
alias lg='git lg'
alias lgg='git log'
alias lgo='git log --oneline --decorate'
alias dif='git df'
alias difw='git diff --word-diff'
alias difc='git df --cached'
alias push='git push'
alias pull='git pull'
alias ci='git ci'
alias co='git co'
alias git-count='git shortlog -s -n'

# now my git aliases work with git-completion
complete -o bashdefault -o default -o nospace -F _gitk st
complete -o bashdefault -o default -o nospace -F _gitk br
complete -o bashdefault -o default -o nospace -F _gitk lg
complete -o bashdefault -o default -o nospace -F _gitk lgg
complete -o bashdefault -o default -o nospace -F _gitk dif
complete -o bashdefault -o default -o nospace -F _gitk difc
complete -o bashdefault -o default -o nospace -F _gitk push
complete -o bashdefault -o default -o nospace -F _gitk pull
complete -o bashdefault -o default -o nospace -F _gitk ci
complete -o bashdefault -o default -o nospace -F _gitk co

# stories and story to list my pivotal stories

# Billetto
alias be="bundle exec"
alias bb='cd /Users/benoit/Developments/Billetto/billetto/'
alias bb2='cd /Users/benoit/Developments/Billetto/billetto2/'
alias au='cd /Users/benoit/Developments/Artworkersunited/awu/'
alias brs='bundle exec rails server'
alias brsd='bundle exec rails server --debugger'
alias brc='bundle exec rails console'

# PS1='[LOCAL]\u@\h:\w\$ \n>'
# PS1='[LOCAL MACBOOK ]\u@imotor:\w\$ \n→ '
PS1='[LOCAL $(__git_ps1 "(%s)")]\u@\h:\w  \n→ '


