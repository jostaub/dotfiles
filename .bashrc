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


# load device specific config
[ -f "~/.config/shell/host_specific" ] && source ~/.config/shell/host_specific

source "$HOME/.config/shell/exports"
source "$HOME/.config/shell/aliasrc"
source "$HOME/.config/shell/ssh-agent"


# Bash completions if installed
if [ -f /etc/profile.d/bash_completion.sh ]; then
  source /etc/profile.d/bash_completion.sh
fi

if [ -f ~/.local/bin/fzf ]; then
  export FZF_DEFAULT_OPTS="--height 30% --layout reverse --border"
  eval "$(fzf --bash)"
fi

if [ -f ~/.local/bin/starship ]; then
  eval "$(starship init bash)"
fi
