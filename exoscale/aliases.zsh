alias cleanvmhosts='sed -i "" -E "/^159\.100/d" $HOME/.ssh/known_hosts'
alias devdockerdb='grep -rIl -E "mysql.*127\.0\.0\.1" * | xargs sed -i "" -E "s/127.0.0.1/192.168.55.100/g"'
alias gitpushmarco='git push origin -f HEAD:user/marco'
