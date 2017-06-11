if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-google-dark.sh
end

function setenv
    set -gx $argv
end

status --is-interactive; and source (pyenv init -|psub)

set fish_greeting ""
fish_vi_key_bindings

export FZF_DEFAULT_COMMAND='ag -g ""'



