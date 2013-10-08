if [ -f ~/.bashrc ]; then source ~/.bashrc ; fi
if [ -f ~/.git-prompt.sh ]; then source ~/.git-prompt.sh ; fi
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -s /Users/pspitler/.nvm/nvm.sh ]] && . /Users/pspitler/.nvm/nvm.sh # This loads NVM
