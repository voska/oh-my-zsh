# Aliases
alias brewski='brew update && brew upgrade && brew cleanup -s && brew doctor; brew missing'
alias git-pull-all='find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull'
