#zshrc config
# Author: Sean Fontaine
# Email: alex_r0land@pm.me

#history config
HISTFILE=~/.history
HISTSIZE=5000
SAVEHIST=5000

setopt HIST_IGNORE_ALL_DUPS  # do not put duplicated command into history list
setopt HIST_SAVE_NO_DUPS  # do not save duplicated command
setopt HIST_REDUCE_BLANKS  # remove unnecessary blanks
setopt INC_APPEND_HISTORY_TIME  # append command to history file immediately after execution
setopt EXTENDED_HISTORY  # record command start time




setopt autocd extendedglob

#turn off beep
unsetopt beep
#vi key bindings
bindkey -v

#source aliases and env
source "$HOME/.zprofile"

for file in $HOME/.zsh/*; do
    source "$file"
done

# for file in $HOME/.zsh/*.sh; do
#     source "$file"
# done
#
#logging
precmd() { eval 'if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history -f)" >> ~/.logs/zsh-history-$(date "+%Y-%m-%d").log; fi' }


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

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

#bash-completion
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

complete -C '/usr/local/bin/aws_completer' aws

