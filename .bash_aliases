# some more ls aliases
alias l='ls -CF'
alias ll='ls -lF'
alias la='ls -A'
alias l1='ls -1'
alias lla='ls -lA'
alias llh='ls -lh'

# 1 letter aliases
alias g='git'
#alias go='gnome-open'
alias go='xdg-open'
alias na='nautilus'
alias ne='nemo'
alias q='exit'
alias t='touch'
alias +x='chmod +x'
alias c+x='chmod +x'

# Easier navigation: .., ..., ...., .....
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# ssh alias
alias g@n='ssh grandemi@netserver'
alias ms@m='ssh ms@miniserver'

# git alias
alias ga='git add'
alias gb='git branch'
alias gch='git checkout'
alias gc='git commit'
alias gca='git commit -a'
alias gd='git diff'
alias gl='git log'
alias gpl='git pull'
alias gph='git push'
alias gst='git status'  # do NOT use gs is ghostscript
alias gt='git tag'

# apt-get aliases
alias aup='sudo apt update'
alias aupg='sudo apt upgrade'
alias aupd='aup; aupg'
alias ainst='sudo apt install'
alias apurge='sudo apt purge'
alias adist='sudo apt dist-upgrade'
alias aaclean='sudo apt autoclean'
alias aclean='sudo apt clean'
alias aar='sudo apt autoremove'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# View HTTP traffic
alias sniff="sudo ngrep -d 'wlp3s0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i wlp3s0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'
