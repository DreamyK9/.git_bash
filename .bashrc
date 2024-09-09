# lib imports
source ~/lib/pathtools

# Include files from ~/.bashrc.d
if [ -d ~/.bashrc.d ]; then
    for file in ~/.bashrc.d/*; do
        [ -r "$file" ] && . "$file"
    done
fi

# ls aliases
alias la="ls -A"
alias ll="ls -l"
alias lla="ls -lA"
alias lh="ls -d .?*"
alias llh="ls -ld .?*"

# Custom Scripts
pathappend ~/Scripts
