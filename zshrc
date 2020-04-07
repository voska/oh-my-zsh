# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Oh my zsh configuration
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="voska"

# Set up plugins
plugins=()
plugins+=(git)
plugins+=(git-prompt)
plugins+=(rails)
plugins+=(rvm)
plugins+=(sublime)
plugins+=(sudo)
plugins+=(tig)
plugins+=(colored-man-pages)
plugins+=(zsh-syntax-highlighting)

# Activate Oh my zsh
source $ZSH/oh-my-zsh.sh
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Add ssl key & cert path
export PATH=$PATH:$HOME/.ssl/server.key
export PATH=$PATH:$HOME/.ssl/server.csr

export PATH="/usr/local/sbin:$PATH"

export PATH=$PATH:/Users/matt/.cargo/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
