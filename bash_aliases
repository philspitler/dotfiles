# aliases
alias ll='ls -l'
alias la='ls -A'
#alias rm='rm -i'
alias cl='clear'
alias reload='source ~/.bashrc'
alias flush='memflush --servers=localhost'
alias disku='du -sh *'
alias diskd='du -sh'

# gems
alias gl='gem list'

# bundler
alias be="bundle exec"

# rails
alias rr='touch tmp/restart.txt'
alias migrate="rake db:migrate db:test:prepare"
alias remigrate="rake db:migrate && rake db:migrate:redo && rake db:schema:dump db:test:prepare"
alias routes="rake routes"
alias gen="rails generate"

# testing
alias cuke="cucumber features"

# rake
alias rakeac="rake_cache"
alias rakeacc="rake_cache_clear"

# directories
alias xcode="open -a Xcode"

# git
alias gb='git branch'
alias clone='git clone'
alias rollup='rake git:rollup'
alias gpp='git pull && git push'
alias stash='git stash'

# redis
#alias start_redis="redis-server /usr/local/etc/redis.conf"

# gvim
alias gvim="gvim -p --remote-tab-silent"
  
#colors
#alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
