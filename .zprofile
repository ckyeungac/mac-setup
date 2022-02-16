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

# open Sublime as `subl`
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# open Visual Studio Code as `vscode`
vscode () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# pyenv
eval "$(pyenv init --path)"
