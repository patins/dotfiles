if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-google-dark.sh
end

status --is-interactive; and source (pyenv init -|psub)