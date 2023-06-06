#!/bin/sh
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"


# history
HISTFILE=~/.zsh_history

# source
#plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/exports.zsh"

# plugins
plug "esc/conda-zsh-completion"
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
#plug "zap-zsh/zap-prompt"
plug "zap-zsh/atmachine-prompt"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"

# keybinds
bindkey '^ ' autosuggest-accept
export GOPATH=/home/pojos/go
#export JAVA_HOME=/opt/jdk1.8.0_201
#export JAVA_HOME=/opt/jdk-15.0.2+7
export JAVA_HOME=/opt/jdk-17.0.7
export VAULT_ADDR="https://dprx.agts.intra:8200"
export PATH="$HOME/.local/bin":"$HOME/local/nvim/bin":"$HOME/bin":"$HOME/sdk/go/bin":"$HOME/go/bin":"/opt/jdk-17.0.7/bin":"$HOME/.local/share/coursier/bin":$PATH

if command -v bat &> /dev/null; then
  alias cat="bat -pp --theme \"Visual Studio Dark+\"" 
  alias catt="bat --theme \"Visual Studio Dark+\"" 
fi
