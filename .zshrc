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

# init starship
eval "$(starship init zsh)"

