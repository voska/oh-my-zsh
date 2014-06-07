# Important Dirs
PEGASUS="$HOME/dev/pegasus/"

# Aliases
alias show='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'
alias lal='ls -al'

# Maven Config
export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=512m"

# Java Config
export JAVA_HOME=$(/usr/libexec/java_home)
