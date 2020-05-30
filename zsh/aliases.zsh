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

alias cdh='cd $CODE_DIR/home'
alias cdgh='cd $CODE_DIR/home/go/src/github.com/johnplummer'

alias l="ls -lah ${colorflag}"
alias la="ls -AF ${colorflag}"
alias ll="ls -lFh ${colorflag}"
alias lld="ls -l | grep ^d"
alias rmf="rm -rf"

# Ranger
alias r='ranger'

# LazyDocker
alias ld='lazydocker'

# Helpers
alias grep='grep --color=auto'
alias df='df -h' # disk free, in Gigabytes, not bytes
alias du='du -h -c' # calculate disk usage for a folder

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"
# remove broken symlinks
alias clsym="find -L . -name . -o -type d -prune -o -type l -exec rm {} +"

# git aliases
alias g='git'

# tmux aliases
alias tls='tmux ls'
alias ts='tmux new-session -A -s'
alias admin='ts admin'

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
alias cdgw='cd $CODE_DIR/deliveroo/go/src/github.com/deliveroo'
alias cdw='cd $CODE_DIR/deliveroo'
alias shs-production="ssh ecs@hopper-production self-help-service web hopper-runner bundle exec rails c"
alias orderweb-production="ssh ecs@hopper-production orderweb web hopper-runner --allow-service-overrides bundle exec rails c"
alias orderweb-staging="ssh ecs@hopper-staging orderweb web hopper-runner --allow-service-overrides bundle exec rails c"
alias shs-staging="ssh ecs@hopper-staging self-help-service web hopper-runner bundle exec rails c"
alias ssh-shs-staging="ssh ecs@hopper-staging self-help-service web hopper-runner sh"
alias ssh-atlas-staging="ssh ecs@hopper-staging logistics-dashboard web hopper-runner sh"

