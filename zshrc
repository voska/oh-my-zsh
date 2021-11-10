# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Oh my zsh configuration
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="voska"

# Set up plugins
plugins=()
plugins+=(colored-man-pages)
plugins+=(gh)
plugins+=(git)
plugins+=(git-auto-fetch)
plugins+=(git-prompt)
plugins+=(heroku)
plugins+=(macos)
plugins+=(npm)
plugins+=(rails)
plugins+=(rvm)
plugins+=(sublime)
plugins+=(sudo)
plugins+=(vscode)
plugins+=(yarn)
plugins+=(zsh-interactive-cd)
plugins+=(zsh-syntax-highlighting)

# Activate Oh my zsh
source $ZSH/oh-my-zsh.sh
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Add ssl key & cert path
export PATH=$PATH:$HOME/.ssl/server.key
export PATH=$PATH:$HOME/.ssl/server.csr

export PATH="/usr/local/sbin:$PATH"

export PATH=$PATH:$HOME/.cargo/bin

# NVM config
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Add JDK to path
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Add Brew to path.
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
