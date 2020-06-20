# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
antigen theme romkatv/powerlevel10k
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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
