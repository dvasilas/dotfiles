set -x SHELL /usr/local/bin/fish
set -x EDITOR nvim 

# go
set -x GOPATH "$HOME/go"
set -x GOROOT "/usr/local/go"
set -x PATH "$GOPATH/bin" $PATH
set -x PATH "$GOROOT/bin" $PATH

source ~/.config/fish/aliases.fish

# Completions
function make_completion --argument-names alias command
    echo "
    function __alias_completion_$alias
        set -l cmd (commandline -o)
        set -e cmd[1]
        complete -C\"$command \$cmd\"
    end
    " | .
    complete -c $alias -a "(__alias_completion_$alias)"
end

make_completion g 'git'

status --is-interactive; and source (pyenv init -|psub)

# THEME PURE #
set fish_function_path /Users/dimvas/.config/fish/functions/theme-pure/functions/ $fish_function_path
source /Users/dimvas/.config/fish/functions/theme-pure/conf.d/pure.fish
