# reload zsh config
alias reload='RELOAD=1 source $HOME/.zshrc'

# Use Neovim instead of Vim or Vi
alias vim="nvim"
alias vi="nvim"

# Filesystem aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias cdc='cd $CODE_DIR'

alias l="ls -lah ${colorflag}"
alias la="ls -AF ${colorflag}"
alias ll="ls -lFh ${colorflag}"
alias lld="ls -l | grep ^d"
alias rmf="rm -rf"

# Ranger
alias r='ranger'

# Lazy...
alias ld='lazydocker'
alias lg='lazygit'

# Helpers
alias grep='grep --color=auto'
alias df='df -h' # disk free, in Gigabytes, not bytes
alias du='du -h -c' # calculate disk usage for a folder

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"
# remove broken symlinks
alias clsym="find -L . -name . -o -type d -prune -o -type l -exec rm {} +"

# tmux aliases
alias tls='tmux ls'
alias ts='tmux new-session -A -s'
alias mux='ts mux'

# config aliases
alias zshconfig="vim $HOME/.zshrc"
alias gitconfig="vim $HOME/.gitconfig"
alias vimconfig="vim $HOME/.vimrc"
alias rubocopconfig="vim $HOME/.rubocop.yml"

# ruby
alias be='bundle exec'
alias ber='bundle exec rake'
alias tber='RAILS_ENV=test bundle exec rake'
alias test='bundle exec rspec'
alias testf='bundle exec rspec --only-failures'
alias testff='bundle exec rspec --next-failure'


# work aliases
alias cdr='cd $ROO_CODE_DIR'

alias ssm='alias | grep ssm'

alias ssm-shs='ssm-saiyan self-help-service web hopper-runner bundle exec rails c'
alias ssm-ssh-shs='ssm-saiyan self-help-service web hopper-runner sh'
alias ssm-ssh-c3='ssm-saiyan care-command-centre web hopper-runner sh'
alias ssm-ssh-atlas='ssm-saiyan logistics-dashboard web hopper-runner sh'
alias ssm-orderweb='ssm-saiyan orderweb web hopper-runner --allow-service-overrides bundle exec rails c'

