alias cleanvmhosts='sed -i "" -E "/^159\.100/d" $HOME/.ssh/known_hosts'
alias devdockerdb='grep -rIl -E "mysql.*127\.0\.0\.1" envdir tests | xargs sed -i "" -E "s/127.0.0.1/192.168.55.100/g"'
alias gitpushmarco='git push origin -f HEAD:user/marco'

alias demo_api='echo $DEMO_API_KEY | pbcopy'
alias demo_secret='echo $DEMO_SECRET_KEY | pbcopy'

alias dev_update='pip install --upgrade pip && pip install -r requirements-dev.txt && npm install'

