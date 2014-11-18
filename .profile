if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi
# set PATH so it includes user's private bin if it exists</div>
if [ -d ~/bin ] ; then
  PATH=~/bin:"${PATH}"
fi
