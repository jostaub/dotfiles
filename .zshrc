# download plugins
if [ ! -d "$HOME/.config/zsh/plugins/zsh-autosuggestions" ]; then
    git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.config/zsh/plugins/zsh-autosuggestions
fi

if [ ! -d "$HOME/.config/zsh/plugins/zsh-syntax-highlighting" ]; then
    git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/plugins/zsh-syntax-highlighting
fi

# general stuff
source ~/.config/zsh/general

# ssh-agent
source ~/.config/zsh/ssh-agent

# aliases + keybindings
source ~/.config/zsh/keybindings
source ~/.config/zsh/aliasrc 

# load device specific config
[ -f "~/.config/zsh/device_specific" ] && source ~/.config/zsh/device_specific

# plugin
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# plugin config
source ~/.config/zsh/plugin-config

# init starship
eval "$(starship init zsh)"

