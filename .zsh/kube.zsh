#kubernetes
alias k='kubectl'
alias kd='kubectl delete'
alias kg='kubectl get'
alias kl='kubectl logs'
alias klf='kubectl logs -f'
# certificatesigningrequests
alias kgcsr='kubectl get certificatesigningrequests'

# clusterrolebindings
alias kgcrb='kubectl get clusterrolebindings'

# clusterroles
alias kgcr='kubectl get clusterroles'

# componentstatuses
alias kgcs='kubectl get componentstatus'

# from file
alias kaf='kubectl apply -f'
alias kcf='kubectl create -f'
alias kdf='kubectl delete -f'
alias kef='kubectl edit -f'
alias kdsf='kubectl describe -f'
alias kgf='kubectl get -f'

alias kdsns='kubectl describe namespaces'

# Nodes
alias kdsn='kubectl describe nodes'
alias ken='kubectl edit nodes'
alias kgn='kubectl get nodes'
alias kgny='kubectl get nodes -o yaml'
alias ktn='kubectl top nodes'

#pods
alias kdsp='kubectl describe pods'
alias kgp='kubectl get pods'
#services
alias kgsv='kubectl get services'
alias kdsv='kubectl describe services'

# roles
alias kgr='kubectl get roles'
# secrets
alias kdssc='kubectl describe secrets'
# serviceaccounts
alias kgsa='kubectl get serviceaccounts'

