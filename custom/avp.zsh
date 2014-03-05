# Miscellaneous aliases
alias lh="ll -h"
alias irc="screen -rd irc"
alias sml="rlwrap sml"
alias mr="make run"
alias mysqlu="mysql -u root -p"""
alias open="xdg-open"
alias vimrc="vim ~/.vim/vimrc"
alias copy="xclip -selection clipboard"
alias add="git add"

# Important directories
CMU="$HOME/Dropbox/cmu/"
alias cmu="~CMU"
alias gigastorm="cd ~/Dropbox/GigaStorm"

PROGRAMMING="$HOME/Dropbox/programming/"
alias programming="~PROGRAMMING"
PEGASUS="$HOME/Dropbox/programming/pegasus/"
alias pegasus="~PEGASUS"

# Android aliases
alias droidconnect="sudo mtpfs -o allow_other /media/nexus4"
alias droiddisconnect="sudo umount /media/nexus4"

# Useful environment variables
export PATH=$PATH:~/google_appengine
export PATH=$PATH:~/intellij-idea
export PATH=$PATH:~/Dropbox/bin
export PATH=$PATH:/usr/lib/smlnj/bin
export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=512m"
export JAVA_HOME="$(/usr/libexec/java_home)"
export EDITOR=vim
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages

mysql_reset() {
  DIR=$(pwd)
  cd ~/Dropbox/programming/pegasus/tools
  cat create_tables.sql create_testdata.sql | mysqlu
  cd $DIR
}

# For Wacom tablet
wacom() {
  xsetwacom --set 19 Button 1 "key ctrl z"
  xsetwacom --set "Wacom Bamboo 16FG 4x5 Finger touch" touch off
}

