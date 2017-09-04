# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Oh my zsh configuration
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="voska"

# Set up plugins
plugins=()
plugins+=(git)
plugins+=(git-prompt)
plugins+=(zsh-syntax-highlighting)
plugins+=(npm)
plugins+=(mvn)
plugins+=(sublime)
plugins+=(colored-man)

# Activate Oh my zsh
source $ZSH/oh-my-zsh.sh
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Add ssl key & cert path
export PATH=$PATH:$HOME/.ssl/server.key
export PATH=$PATH:$HOME/.ssl/server.csr

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/sbin:$PATH"
