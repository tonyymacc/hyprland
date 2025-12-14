# Remove fish greeting
function fish_greeting
end

# Aliases
alias ls='eza -lh --color=always --group-directories-first --icons' # preferred listing
alias lsa='eza -alh --color=always --group-directories-first --icons' # all files and dirs
alias lt='eza --tree --level=2 --color=always --group-directories-first --icons' # tree listing
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"

# Directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Tools

# Opens Yazi on current directory
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

# Git
alias g='git'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gcad='git commit -a --amend'
alias gp='git push'

# Starship
if command -v starship >/dev/null 2>&1
    starship init fish | source
end
