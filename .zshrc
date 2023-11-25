#zshrc config
# Author: Sean Fontaine
# Email: alex_r0land@pm.me

#history config
HISTFILE=~/.history
HISTSIZE=5000
SAVEHIST=5000
setopt autocd extendedglob

#turn off beep
unsetopt beep
#vi key bindings
bindkey -v

#source aliases and env
source "$HOME/.zprofile"

for file in $HOME/.zsh/*.zsh; do
    source "$file"
done

for file in $HOME/.zsh/*.sh; do
    source "$file"
done

fpath=(/tmp/zsh-completions/src $fpath)

#persistant ssh agent
eval $(ssh-agent) &> /dev/null

ssh-add ~/.ssh/f0nzy &> /dev/null
ssh-add ~/.ssh/jump &> /dev/null
ssh-add ~/.ssh/homelab &> /dev/null

#miniplug zsh
source "$HOME/.zsh/plugins/miniplug.zsh"

# Define a plugin
miniplug plugin 'zsh-users/zsh-syntax-highlighting'
miniplug plugin 'zsh-users/zsh-autosuggestions'
miniplug plugin 'zsh-users/zsh-completions'
miniplug theme 'dracula/zsh'

# Source plugins
miniplug load


#bash-completion
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

complete -C '/usr/local/bin/aws_completer' aws

