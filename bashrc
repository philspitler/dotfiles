# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# paths
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="/android-sdk/tools:$PATH"
export PATH="/Applications/MAMP/bin/php/php5.4.4/bin:/Applications/MAMP/Library/bin:/Volumes/Data/Users/pspitler/Library/drush:$PATH"
export PATH="/usr/local/Cellar/curl/7.25.0/bin:$PATH"

#export NODE_PATH="/usr/local/lib/node"

# editors
export GIT_EDITOR="mvim"
export SVN_EDITOR="mvim"
export EDITOR="mvim"

# cvsroot
export CVSROOT=:pserver:pspitler@localhost:2401/export/home/tkicvs

# setup SSH tunnel to CVS
#ssh -f pspitler@cooperstown -L 2401:cooperstown:2401 -N

# enable color support
export CLICOLOR=1
if [ -x /usr/bin/dircolors ]; then
  eval "`dircolors -b`"
fi

# bash
if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases ; fi
if [ -f ~/.bash_functions ]; then . ~/.bash_functions ; fi

# rvm
if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi
if [ -d ~/.rvm/bin ] ; then export PATH=$PATH:~/.rvm/bin ; fi
if [ -r ~/.rvm/scripts/completion ] ; then source ~/.rvm/scripts/completion ; fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ]; then
#  . /etc/bash_completion
#fi
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# prompt
bash_prompt
unset bash_prompt

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
