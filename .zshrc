# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="mh"

# Zsh plugins
plugins=(git sublime aws osx redis-cli httpie ruby rvm svn vagrant gem)

source $ZSH/oh-my-zsh.sh

# Personal aliases
alias mount='mount | column -t'
alias cls='clear'
alias tree='find . | sed -e "s/[^-][^\/]*\//--/g;s/--/ |-/"'

# Include syntax highlighting
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Z!
. `brew --prefix`/etc/profile.d/z.sh

# 
export PATH=$PATH:$HOME/.chefdk/gem/ruby/2.3.0/bin
export EDITOR='vim'

# Cloudstack environment variables
source ~/.cloudstack.env

# Cloudstack-cli tab completion
autoload bashcompinit
bashcompinit
eval "$(cloudstack-cli completion --shell=bash)"
