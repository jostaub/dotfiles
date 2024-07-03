# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

export XDG_CONFIG_HOME="$HOME/.config"
export PATH


# User specific aliases and functions
if [ -d ~/.config/bash ]; then
	for rc in ~/.config/bash/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi
unset rc
source "$HOME/.config/shell/ssh-agent"


# Bash completions if installed
if [ -f /etc/profile.d/bash_completion.sh ]; then
  source /etc/profile.d/bash_completion.sh
fi

if [ -f ~/.local/bin/starship ]; then
  eval "$(starship init bash)"
fi
