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

# Source local zshrc
if [ -f ~/.zshrc.local ]; then
    . ~/.zshrc.local
fi

# Source Z
. ~/.z.sh

# Python virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    . /usr/local/bin/virtualenvwrapper.sh
fi

# Go lang
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

# C++
export CXXFLAGS='-std=c++11'
if hash clang++ 2>/dev/null; then
    export CXX=clang++
    export CXXFLAGS='-std=c++1y -stdlib=libc++'
fi
