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
