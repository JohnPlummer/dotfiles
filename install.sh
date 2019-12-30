#!/usr/bin/env bash

command_exists() {
    type "$1" > /dev/null 2>&1
}

echo "Installing dotfiles."

source install/link.sh

source install/git.sh

# only perform macOS-specific install
if [ "$(uname)" == "Darwin" ]; then
    echo -e "\\n\\nRunning on macOS"

    source install/brew.sh

    source install/osx.sh
fi

echo "creating vim directories"
mkdir -p ~/.vim-tmp

echo "installing minpac"
mkdir -p ~/.config/nvim/pack/minpac/opt
git clone https://github.com/k-takata/minpac.git ~/.config/nvim/pack/minpac/opt/minpac

echo "compiling terminal info"
tic resources/xterm-256color-italic.terminfo
tic resources/tmux-256color-italic.terminfo

if ! command_exists zsh; then
    echo "zsh not found. Please install and then re-run installation scripts"
    exit 1
elif ! [[ $SHELL =~ .*zsh.* ]]; then
    echo "Configuring zsh as default shell"
    chsh -s "$(command -v zsh)"
fi

echo "Done. Reload your terminal."
