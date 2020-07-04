#!/usr/bin/env bash

if test ! "$( command -v brew )"; then
    echo "Installing homebrew"
    ruby -e "$( curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install )"
fi

echo -e "\\n\\nInstalling homebrew packages..."
echo "=============================="

formulas=(
    ctags
    fd
    fzf
    git
    golang
    grep
    lazydocker
    neovim
    prettier
    python
    rbenv
    ripgrep
    ruby-build
    sbt
    tmux
    tree
    wget
    vim
    yarn
    zsh
)

for formula in "${formulas[@]}"; do
    formula_name=$( echo "$formula" | awk '{print $1}' )
    if brew list "$formula_name" > /dev/null 2>&1; then
        echo "$formula_name already installed... skipping."
    else
        brew install "$formula"
    fi
done

cask_formulas=(
  alacritty
  vlc
)

for formula in "${cask_formulas[@]}"; do
    formula_name=$( echo "$formula" | awk '{print $1}' )
    if brew cask list "$formula_name" > /dev/null 2>&1; then
        echo "$formula_name already installed... skipping."
    else
        brew cask install "$formula"
    fi
done

formula_name="adoptopenjdk8"
if brew cask list "$formula_name" > /dev/null 2>&1; then
    echo "$formula_name already installed... skipping."
else
    brew tap AdoptOpenJDK/openjdk
    brew cask install "$formula_name"
fi

# after the install, install neovim python libraries
echo -e "\\n\\nRunning Neovim Python install"
echo "=============================="
pip3 install pynvim

# Change the default shell to zsh
zsh_path="$( command -v zsh )"
if ! grep "$zsh_path" /etc/shells; then
    echo "adding $zsh_path to /etc/shells"
    echo "$zsh_path" | sudo tee -a /etc/shells
fi

if [[ "$SHELL" != "$zsh_path" ]]; then
    chsh -s "$zsh_path"
    echo "default shell changed to $zsh_path"
fi
