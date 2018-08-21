# Little trick to start the SSH agent on OSX
if [[ "$(uname -s)" == "Darwin" ]]; then
    if [[ `ps -ef | grep -q ssh-agent$` ]]; then
        echo "Starting new SSH agent..."
        /usr/bin/ssh-agent -a /Users/marco/.ssh-agent.sock
    fi
    export SSH_AUTH_SOCK="/Users/marco/.ssh-agent.sock"
fi
