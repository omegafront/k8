# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
complete -C '/usr/local/bin/aws_completer' aws
export AWS_EXECUTION_ENV=CloudShell
source <(kubectl completion bash)

#k8 command shortcuts
alias ls='ls -liah'
alias k=kubectl
alias kgp='kubectl get pods'
alias kn='kubectl config set-context --current --namespace '
alias kcf='kubectl create -f'
alias kaf='kubectl apply -f'
alias kg='kubectl get'
alias kd='kubectl describe'
alias kc='kubectl config current-context'
export do='--dry-run=client -o yaml'
export gp='--grace-period=0 --force'

#env var for helm executable
export PATH=$PATH:/usr/local/bin/helm
