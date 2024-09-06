# Include files from ~/.bashrc.d
if [ -d ~/.bashrc.d ]; then
    for file in ~/.bashrc.d/*; do
        [ -r "$file" ] && . "$file"
    done
fi

# Anaconda config
export PATH="/c/Users/jwolf/AppData/Local/anaconda3/:$PATH"
export PATH="/c/Users/jwolf/AppData/Local/anaconda3/Scripts:$PATH"
export PATH="/c/Users/jwolf/AppData/Local/anaconda3/Library:$PATH"
. /c/Users/jwolf/AppData/Local/Anaconda3/etc/profile.d/conda.sh
alias py="python"
alias pip="python -m pip"

