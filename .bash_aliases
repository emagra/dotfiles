# some more ls aliases
alias l='ls -CF'
alias ll='ls -lF'
alias la='ls -A'
alias l1='ls -1'
alias lla='ls -lA'

# 1 letter aliases
alias g="git"
alias na="nautilus"
alias ne="nemo"
alias q='exit'
alias t="touch"

# Easier navigation: .., ..., ...., .....
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# ssh alias
alias g@n='ssh grandemi@netserver'

# git alias
alias ga='git add'
alias gb='git branch'
alias gch='git checkout'
alias gc='git commit'
alias gd='git diff'
alias gl='git log'
alias gpull='git pull'
alias gpush='git push'
alias gits='git status'
alias gt='git tag'

# apt-get aliases
alias aup='sudo apt-get update'
alias aupg='sudo apt-get upgrade'
alias aupd='aup; aupg'
alias ainst='sudo apt-get install'
alias apurge='sudo apt-get purge'
alias adist='sudo apt-get dist-upgrade'
alias aaclean='sudo apt-get autoclean'
alias aclean='sudo apt-get clean'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# View HTTP traffic
alias sniff="sudo ngrep -d 'eth0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i eth0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

