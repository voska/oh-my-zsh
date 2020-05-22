# Aliases
alias show='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'
alias brewski='brew update && brew upgrade && brew cask upgrade --greedy && brew cleanup -s && brew doctor; brew missing'
