
#arch commands
alias reload='. ~/.zshrc'
alias update='sudo pacman -Syyu'
alias i='sudo pacman -S'
alias tree-overview='tree -CDL 2'
alias tree-1='tree -CL 2'
alias lock='cmatrix -r'
alias vim='nvim'

#rust binaries
alias cat='bat'
alias speedtest='speedtest-rs'
alias webserver="miniserve -p 8001"

#tmux
alias t='tmux new -f ~/.tmux.conf -s $1'
alias t-ctf='tmuxp load ~/.config/tmuxp/ctf.yaml'
alias t-dev='tmuxp load ~/.config/tmuxp/dev.yaml'
alias t-project='tmuxp load ~/.config/tmuxp/three-tier.yaml'

#networking
alias public='curl wtfismyip.com/text'


#python
alias py='python3'

#ssh

#tor
alias tor='docker run --rm --detach --name tor --publish 9050:9050 prox-tor:local'


#scripts
alias arch-mirror='~/.config/scripts/./arch-mirror.sh'
alias terraform-project='~/.config/scripts/./terraform-skel.sh $1'
alias dockershell='~/.config/scripts/./dockershell.sh'
alias tf-project='~/.config/scripts/./terraform-skel.sh'

#gcp
alias gcloud='docker run --rm --volumes-from gcloud-config gcr.io/google.com/cloudsdktool/google-cloud-cli gcloud'

#docker
alias dock='docker'
alias dockimls='docker image ls'
alias dockim='docker image'
alias dockc='docker container'
alias dockps='docker ps'
alias docknt='docker network'


#docker compose
alias dock-up='docker-compose up -d'
alias dock-down='docker-compose down'

alias sec='/usr/bin/git --git-dir=/home/$USER/.cfg/ --work-tree=/home/$USER'








