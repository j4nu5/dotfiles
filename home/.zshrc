# Source antigen
source ~/.antigen.zsh

# Setup oh my zsh
antigen use oh-my-zsh

# Setup bundles
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting

# Setup theme
antigen theme agnoster
antigen apply

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

# Setup The Silver Searcher with a pager
alias ag='\ag --pager="less -R"'

# Go lang
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=$PATH:$HOME/bin
