# lib imports
source ~/lib/pathtools
source ~/lib/bash_colors
source ~/lib/config_paths

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

# tmux fix to execute by user
# abandoned bc it doesn't work with programs that need tty
#Source: https://www.reddit.com/r/tmux/comments/12hhghs/comment/ksaor1b/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
#tmu() {
#    # execute tmux with script
#    TMUX="command tmux ${@}"
#    SHELL=/usr/bin/bash script -qO /dev/null -c "eval $TMUX"
#}


