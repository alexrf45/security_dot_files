###############################security#######################################

#Juiceshop
alias juiceshop='docker run --name juiceshop -d --rm -p 3000:3000 bkimminich/juice-shop'

#CTF Aliases
alias htb='sudo openvpn ~/.config/openvpn/lab_f0zy.ovpn'
alias htb-season='sudo openvpn ~/.config/openvpn/competitive_f0zy.ovpn'
alias fortress='sudo openvpn ~/.config/openvpn/fortresses_f0zy.ovpn'
alias tryhackme='sudo openvpn ~/.config/openvpn/f0zy.ovpn'
alias echo-ctf='sudo openvpn ~/.config/openvpn/echoCTF.ovpn'
alias engagement='mkdir -p {recon,www,exploit,pivot,report} '

#tools
alias bfac='docker run -it --rm secsi/bfac --url $1'
alias ciphey='docker run -it --rm remnux/ciphey'
alias caido='docker run --rm -p 8080:8080 caido/caido:latest'
alias bloodhound='docker-compose --env-file $HOME/ctf-repo/.env -f $HOME/.local/tools/bloodhound-dev/docker-compose.yml up -d'
alias bloodhound-down='docker-compose --env-file $HOME/ctf-repo/.env -f $HOME/.local/tools/bloodhound-dev/docker-compose.yml down'
alias cme='nxc'
alias evil-winrm='docker run --rm -it oscarakaelvis/evil-winrm'
alias port-scan='sudo nmap -sC -sV -p- $IP > scan.txt'
alias udp-scan='sudo nmap -sU --top-ports 10 $IP -v > udp.scan.txt'
alias stealth-scan='sudo nmap --data-length 6 -T3 -A -ttl 64 -p- $IP > stealth-scan.txt'
