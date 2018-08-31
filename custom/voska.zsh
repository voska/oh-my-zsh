# Aliases
alias show='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'

# Java Config
export JAVA_HOME=$(/usr/libexec/java_home)

if [[ $(uname) = 'Darwin' ]]; then
  export JAVA_HOME="$(/usr/libexec/java_home)"
  alias mysql_start="mysqld_safe"
fi
mysql_reset() {
  local DIR=$(pwd)
  cd ~/dev/pegasus/tools
  cat create_tables.sql create_testdata.sql | mysqlu pegasus
  cd $DIR
}

