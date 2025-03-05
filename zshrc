# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Oh my zsh configuration
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="voska"
DEV=$HOME/Developer
DISABLE_AUTO_UPDATE="true"

# Set up plugins
plugins=(
  colored-man-pages
  colorize
  gh
  git
  git-auto-fetch
  git-prompt
  macos
  npm
  rails
  rvm
  ssh
  sudo
  tailscale
  vscode
  zsh-autosuggestions
  zsh-interactive-cd
  zsh-syntax-highlighting
)

# Activate Oh my zsh
source $ZSH/oh-my-zsh.sh
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"

# NVM config
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Add JDK to path
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Add Brew to path.
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
