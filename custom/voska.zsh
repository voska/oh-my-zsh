# Aliases
alias show='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'
alias brewski='brew update && brew upgrade --greedy && brew cleanup -s && brew doctor; brew missing'
alias git-pull-all='find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull'
