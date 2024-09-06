# Include files from ~/.bashrc.d
if [ -d ~/.bashrc.d ]; then
    for file in ~/.bashrc.d/*; do
        [ -r "$file" ] && . "$file"
    done
fi

# ls aliases
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"
alias lh="ls -d .?*"
alias llh="ls -ld .?*"
