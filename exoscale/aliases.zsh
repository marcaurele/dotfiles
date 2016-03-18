alias findhost='ssh $EXOSCALE_BASTION findhost \$1\'
alias cleanvmhosts='sed -i -E "/^159\.100/d" $HOME/.ssh/known_hosts'