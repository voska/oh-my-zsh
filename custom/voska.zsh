# Important Dirs
PEGASUS="$HOME/dev/pegasus/"

# Aliases
alias show='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'
alias mysqlu="mysql -u root -p"""

# eb Config
export PATH=$PATH:~/bin/AWS-ElasticBeanstalk-CLI-2.6.3/eb/macosx/python2.7/

# Ruby Config
source ~/.profile
export PATH=$PATH:/usr/local/Cellar/ruby/2.1.1_1/bin/

# Maven Config
export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=512m"

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

