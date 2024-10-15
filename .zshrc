# download plugins
if [ ! -d "$HOME/.config/zsh/plugins/zsh-autosuggestions" ]; then
    git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.config/zsh/plugins/zsh-autosuggestions
fi

if [ ! -d "$HOME/.config/zsh/plugins/zsh-syntax-highlighting" ]; then
    git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/plugins/zsh-syntax-highlighting
fi

# load host specific config
[ -f ~/.config/shell/host_specific ] && source ~/.config/shell/host_specific

# general stuff
source ~/.config/zsh/general
source ~/.config/shell/exports

# aliases + keybindings
source ~/.config/zsh/keybindings
source ~/.config/shell/aliasrc 

# ssh-agent
source ~/.config/shell/ssh-agent

# plugin
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# plugin config
source ~/.config/zsh/plugin-config

# load fzf integration
if [ -f ~/.local/bin/fzf ]; then
  source <(fzf --zsh)
fi

# init starship
if [ -f ~/.local/bin/starship ]; then
  eval "$(starship init zsh)"
fi
