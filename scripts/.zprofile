#   -------------------------------
#   Environment Configuration
#   -------------------------------
export PATH="$PATH:/usr/local/bin/"
export BLOCKSIZE=1k  # Set default blocksize for ls, df, du

#   -----------------------------
#   Common Terminal Command
#   -----------------------------
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
mcd () { mkdir -p "$1" && cd "$1"; }        # Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # Moves a file to the MacOS trash


#   -------------------------------
#   App Customization
#   -------------------------------

export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

vscode () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

brew() {
    local -a conda_envs
    while [ "$CONDA_SHLVL" -gt 0  ]; do
        conda_envs=("$CONDA_DEFAULT_ENV" $conda_envs)
        conda deactivate
    done
    command brew $@
    local brew_status=$?
    for env in $conda_envs; do
        conda activate "$env"
    done
    unset env
    return "$brew_status"
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<