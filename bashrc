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
export GIT_EDITOR="vim"
export SVN_EDITOR="vim"
export EDITOR="vim"

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

# history
export HISTTIMEFORMAT='%F %T '
export HISTSIZE=2000

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

source /usr/local/opt/chruby/share/chruby/chruby.sh

RUBIES+=(~/.rbenv/versions/*)

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
