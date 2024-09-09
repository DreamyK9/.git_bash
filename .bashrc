# tmux fix to execute by user
# Source: https://www.reddit.com/r/tmux/comments/12hhghs/comment/ksaor1b/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
tmu() {
    # execute tmux with script
    TMUX="command tmux ${@}"
    SHELL=/usr/bin/bash script -qO /dev/null -c "eval $TMUX"
}

# lib imports
source ~/lib/pathtools
source .bash_colors
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

# Instantly start a tmux session
# Source: https://stackoverflow.com/a/51922746
if [ -t 0 ] && [[ -z $TMUX ]] && [[ $- = *i* ]]; then tmu; fi

