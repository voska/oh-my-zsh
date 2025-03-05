# Shell options
setopt AUTO_CD
setopt EXTENDED_GLOB
setopt SHORT_LOOPS

unsetopt SHARE_HISTORY

# Load more commands
autoload -U zmv
autoload -U zargs

## Completions
autoload -U compinit
compinit -C
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
  'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Key bindings
bindkey '^R' history-incremental-search-backward
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey '^K' kill-line

# ls aliases
alias sl="ls"
alias la="ls -A"
alias ll="ls -l"
alias l1="ls -1"
alias l="ls"
alias lal='ls -al'

# Configuration aliases
alias reload="source ~/.zshrc"

# Git aliases
alias tigs="tig status"
alias pull="git pull"

# Miscellaneous aliases
alias cat="bat"
alias ping="prettyping"
alias dirstat="du -d 1 -h | sort -hr | head -n 11"
alias ip="ifconfig | grep 'inet '"
alias v="vim"
alias m="man"

if [[ $(uname) = 'Linux' ]]; then
  alias copy="xclip -selection clipboard"
  alias open="xdg-open"
fi

if [[ $(uname) = 'Darwin' ]]; then
  alias copy="pbcopy"
  alias top="top -o cpu"
  alias sort="gsort"
fi

# Docker Shortcut Aliases
alias d="docker"
alias dc="docker-compose"

# Container Management
alias dps="docker ps"
alias dpa="docker ps -a"
alias dstart="docker start"
alias dstop="docker stop"
alias drestart="docker restart"
alias dkill="docker kill"
alias drm="docker rm"
alias dprune="docker container prune -f"

# Image Management
alias di="docker images"
alias dbuild="docker build -t"
alias drmi="docker rmi"
alias diprune="docker image prune -a -f"

# Running Containers
alias dr="docker run"
alias dlog="docker logs"

# Volume and Network Management
alias dv="docker volume"
alias dvls="docker volume ls"
alias dvprune="docker volume prune -f"
alias dn="docker network"
alias dnls="docker network ls"
alias dnprune="docker network prune -f"

# System Cleanup
alias ddu="docker system df"
alias dclean="docker system prune -a -f"

# Docker Compose Shortcuts
alias dcu="docker-compose up -d"
alias dcup="docker-compose up"
alias dcd="docker-compose down"
alias dcr="docker-compose down && docker-compose up -d"
alias dcstop="docker-compose stop"
alias dcrestart="docker-compose restart"
alias dcb="docker-compose build"
alias dcp="docker-compose pull"
alias dclog="docker-compose logs -f"
alias dcps="docker-compose ps"
alias dcrun="docker-compose run"

# Docker Functions
dexec() {
  if [[ -z "$1" ]]; then
    echo "Usage: dexec <container> <command>"
    return 1
  fi
  docker exec -it "$@"
}

dssh() {
  local container=${1:-$(docker ps -q | head -n1)}
  if [[ -z "$container" ]]; then
    echo "No running containers found!"
    return 1
  fi
  docker exec -it "$container" sh
}

dbash() {
  local container=${1:-$(docker ps -q | head -n1)}
  if [[ -z "$container" ]]; then
    echo "No running containers found!"
    return 1
  fi
  docker exec -it "$container" bash
}

# Encryption functions
ssl_encrypt() {
  openssl aes-256-cbc -a -salt -in $1 -out $2
}
ssl_decrypt() {
  openssl aes-256-cbc -a -d -in $1 -out $2
}

# Fun bit of information
alias profileme="history | awk '{print \$2}' | awk 'BEGIN {FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 30 | sort -rn"

# Useful environment variables
export EDITOR=vim

# Speedtest alias
alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"

# Define Color Variables for later usage
c_red=$(tput setaf 1)
c_green=$(tput setaf 2)
c_yellow=$(tput setaf 3)
c_blue=$(tput setaf 4)
c_purple=$(tput setaf 5)
c_cyan=$(tput setaf 6)
c_white=$(tput setaf 7)
c_reset=$(tput sgr0)

# Make .zsh_history store more and not store duplicates
export HISTCONTROL=ignoreboth
export HISTSIZE=100000
export HISTFILESIZE=100000

# Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe.sh ] && export LESSOPEN="|/usr/bin/lesspipe.sh %s"

# Alias definitions.
alias killz='killall -9 '
alias hidden='ls -a | grep "^\..*"'
alias rm='rm -i'
alias shell='ps -p $$ -o comm='
alias a='alias'


# Enable color support of ls and also add handy aliases
if [[ `uname` = 'Darwin' ]]; then
  alias ls='gls --color=auto'
else
  alias ls='ls --color=auto'
fi
alias grep='grep --color=auto'

# Useful Functions
qdict(){ grep $1 /usr/share/dict/words; }

# Turn off the ability for other people to message your terminal using wall or write
mesg n
