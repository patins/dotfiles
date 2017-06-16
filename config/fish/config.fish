function light
	eval sh $HOME/.config/base16-shell/scripts/base16-google-light.sh
	echo "colorscheme base16-google-light" > $HOME/.vimrc_background
end

function dark
	eval sh $HOME/.config/base16-shell/scripts/base16-google-dark.sh
	echo "colorscheme base16-google-dark" > $HOME/.vimrc_background
end

if status --is-interactive
	dark
end

function setenv
	set -gx $argv
end

status --is-interactive; and source (pyenv init -|psub)

status --is-interactive; and source (rbenv init -|psub)

set fish_greeting ""
fish_vi_key_bindings

export FZF_DEFAULT_COMMAND='ag -g ""'

export GIT_EDITOR=nvim
