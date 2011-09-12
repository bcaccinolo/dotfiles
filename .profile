
. .bashrc

PATH=/usr/local/bin:/usr/X11/bin:/usr/local/mysql/bin:/usr/bin:/bin:/usr/sbin:/sbin

# MacPorts Installer addition on 2010-03-09_at_11:38:16: adding an appropriate PATH variable for use with MacPorts.
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
# Finished adapting your PATH environment variable for use with MacPorts.

export SVN_EDITOR=vim
export EDITOR=vim

# RVM configuration
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
rvm use ree-1.8.7-2011.03 1> /dev/null

# MacPorts Bash shell command completion
if [ -f /opt/local/etc/bash_completion.d/git-completion.sh ]; then
      . /opt/local/etc/bash_completion.d/git-completion.sh
fi

