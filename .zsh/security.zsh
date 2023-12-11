###############################security#######################################

#Juiceshop
alias juiceshop='docker run --name juiceshop -d --rm -p 3000:3000 bkimminich/juice-shop'

#CTF Aliases
alias htb='sudo openvpn ~/.config/openvpn/lab_f0zy.ovpn'
alias htb-season='sudo openvpn ~/.config/openvpn/competitive_f0zy.ovpn'
alias fortress='sudo openvpn ~/.config/openvpn/fortresses_f0zy.ovpn'
alias tryhackme='sudo openvpn ~/.config/openvpn/f0zy.ovpn'

#bugbounty
alias root-domains='awk -F\/ 'FNR!=1 {print $1}' download_csv.csv | cut -d "," -f 1 > root.txt'

#tools
alias bfac='docker run -it --rm secsi/bfac --url $1'
alias ciphey='docker run -it --rm remnux/ciphey'
alias caido='docker run --rm -p 8080:8080 caido/caido:latest'
alias bloodhound='docker-compose --env-file $HOME/ctf-repo/.env -f $HOME/.local/tools/bloodhound-dev/docker-compose.yml up -d'
alias bloodhound-down='docker-compose --env-file $HOME/ctf-repo/.env -f $HOME/.local/tools/bloodhound-dev/docker-compose.yml down'



