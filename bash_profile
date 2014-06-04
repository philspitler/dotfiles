if [ -f ~/.bashrc ]; then source ~/.bashrc ; fi
if [ -f ~/.git-prompt.sh ]; then source ~/.git-prompt.sh ; fi
if [ -f ~/.profile ]; then source ~/.profile ; fi

[[ -s /Users/pspitler/.nvm/nvm.sh ]] && . /Users/pspitler/.nvm/nvm.sh # This loads NVM

eval "$(rbenv init -)"

export PATH="./.bundle/bin:$PATH"
