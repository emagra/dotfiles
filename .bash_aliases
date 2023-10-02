# some more ls aliases
alias l='ls -CF'
alias ll='ls -lF'
alias la='ls -A'
alias l1='ls -1'
alias lla='ls -lA'
alias llh='ls -lh'

# 1 letter aliases
#alias go='gnome-open'
alias go='xdg-open'
alias na='nautilus'
alias ne='nemo'
alias q='exit'
alias t='touch'
alias x='chmod +x'
alias c+x='chmod +x'
alias tf='tail -f -n 100'

# Easier navigation: .., ..., ...., .....
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# git alias
alias g='git'
alias ga='git add'
alias gb='git branch'
# list branches sorted by last modified @ https://gist.github.com/mwhite/6887990
alias gbl="git for-each-ref --sort='-authordate' --format='%(authordate)%09%(objectname:short)%09%(refname)' refs/heads | sed -e 's-refs/heads/--'"
alias gch='git checkout'
alias gc='git commit'
alias gca='git commit -a'
alias gd='git diff'
# one-line log @ https://gist.github.com/mwhite/6887990
# alias gl='git log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gm='git merge'
alias gpl='git pull'
alias gph='git push'
alias gst='git status'  # do NOT use gs is ghostscript
alias gt='git tag'
# Autocomplete for aliases
# . /usr/share/bash-completion/completions/git
# __git_complete g _git_main
# __git_complete ga _git_add
# __git_complete gb  _git_branch
# __git_complete gch _git_checkout
# __git_complete gc _git_commit
# __git_complete gca _git_commit
# __git_complete gd _git_diff
# __git_complete gm _git_merge
# __git_complete gpl _git_pull
# __git_complete gph _git_push
# __git_complete gst _git_status
# __git_complete gt _git_tag

# apt-get aliases
alias aup='sudo apt update'
alias aupg='sudo apt upgrade -V'
alias aupd='aup; aupg'
alias ainst='sudo apt install'
alias apurge='sudo apt purge'
alias adist='sudo apt dist-upgrade'
alias aaclean='sudo apt autoclean'
alias aclean='sudo apt clean'
alias aar='sudo apt autoremove --purge'

# nala aliases
alias nup='sudo nala update'
alias nupg='sudo nala upgrade'
alias nupd='nupg'
alias ninst='sudo nala install'
alias npurge='sudo nala purge'
alias nclean='sudo nala clean'
alias nar='sudo nala autoremove --purge'

# flatpak aliases
alias fupd='flatpak update'
alias finst='flatpak install'
alias frm='flatpak remove --delete-data -y'
alias fsrch='flatpak search'

alias update='nupd -y; fupd -y'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# View HTTP traffic
alias sniff="sudo ngrep -d 'wlp3s0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i wlp3s0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# URL-encode strings
alias urlencode='python -c "import sys, urllib.parse as ul; print(ul.quote(sys.argv[1]));"'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'