# Create a new directory and enter it
function mkd() {
    mkdir -p "$@" && cd "$@"
}

# Determine size of a file or total size of a directory
function fs() {
        if du -b /dev/null > /dev/null 2>&1; then
                local arg=-sbh
        else
                local arg=-sh
        fi
        if [[ -n "$@" ]]; then
                du $arg -- "$@"
        else
                du $arg .[^.]* *
        fi
}

# Create a git.io short URL
function gitio() {
        if [ -z "${1}" -o -z "${2}" ]; then
                echo "Usage: \`gitio slug url\`"
                return 1
        fi
        curl -i http://git.io/ -F "url=${2}" -F "code=${1}"
}

# `s` with no arguments opens the current directory in Sublime Text, otherwise
# opens the given location
function s() {
        if [ $# -eq 0 ]; then
                subl .
        else
                subl "$@"
        fi
}
