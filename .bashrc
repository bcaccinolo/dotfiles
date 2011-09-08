# echo "in bashrc"

. ~/.profile

if [ -n "$PS1" ]; then PS1='\h \w \$\n> '; fi

alias 'ls'='/usr/local/bin/ls --color'
alias 'll'='ls -l'
alias 'c'='cd ..'

#alias 'g'='grep -nr'
alias g='ack '
alias st='git st'
alias ci='git ci'

alias be='bundle exec '
alias logd='tail -f log/development.log | grep -vE "SELECT |SHOW FIELDS|SQL "'
alias logt='tail -f log/test.log | grep -vE "SELECT |SHOW FIELDS|SQL "'

