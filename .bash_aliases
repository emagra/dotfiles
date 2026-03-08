# some more ls aliases
# File system
if command -v eza &>/dev/null; then
  alias ls='eza -lgh --group-directories-first --icons=auto'
  alias la='ls -a'
  alias lt='eza --tree --level=2 --long --icons --git'
  alias lta='lt -a'
else
  alias ls='ls -lh --group-directories-first --color=auto'
  alias la='ls -a'
fi

# 1 letter aliases
#alias go='gnome-open'
alias go='xdg-open'
alias na='nautilus'
alias ne='nemo'
alias q='exit'
alias t='touch'
alias +x='chmod +x'
alias tf='tail -f -n 100'
alias n='nvim'

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
alias ainst='sudo apt install'
alias apurge='sudo apt purge'
alias adist='sudo apt dist-upgrade'
alias aaclean='sudo apt autoclean'
alias aclean='sudo apt clean'
alias aar='sudo apt autoremove --purge'
alias aupd='aup; aupg; aar'

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
alias funused='flatpak remove --delete-data --unused -y'

alias update='echo "## APT Update"; aup; echo "## APT Upgrade"; aupg -y; echo "## APT Remove"; aar -y; echo "## Flatpak Upgrade"; fupd -y'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# View HTTP traffic
alias sniff="sudo ngrep -d $(netstat -r | awk '/default/ {print $NF}') -t '^(GET|POST) '" #'tcp and port 80'"
alias httpdump="sudo tcpdump -i $(netstat -r | awk '/default/ {print $NF}') -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# URL-encode strings
alias urlencode='python -c "import sys, urllib.parse as ul; print(ul.quote(sys.argv[1]));"'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=normal -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
