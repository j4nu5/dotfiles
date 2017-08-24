# Source antigen
. ~/.antigen.zsh

# Setup oh my zsh
antigen use oh-my-zsh

# Setup bundles
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting

# Setup theme
antigen theme agnoster

# Source Z
. ~/.z.sh

# Python virtualenvwrapper
. /usr/local/bin/virtualenvwrapper.sh

# Go lang
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
