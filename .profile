export PATH="$HOME/.cargo/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

export GOPATH="$HOME/go"
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH

# added by travis gem
[ -f /Users/user/.travis/travis.sh ] && source /Users/user/.travis/travis.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export GPG_TTY=$(tty)

alias ink="cd ~/movableink"
alias canvas="ink && cd canvas/packages/canvas"
alias custom="ink && cd cartridges"
alias cust="custom"
alias apps="ink && cd studio-apps/apps"
alias app="ink && cd studio-app"
alias cart="custom"
alias sorc="ink && cd sorcerer"
alias can="canvas"
alias work="ink && cd studio-framework"
alias kep="cd ~/khepri"
alias kepri="kep && ember electron"
alias hem="ink && cd hemingway"
alias mi="ink && cd movableink"
alias ojos="ink && cd ojos"
alias oj="ojos"
alias prom="cd ~/promiscuous"
alias capturama="ink && cd capturama"
alias templates="ink && cd templates"
alias trillian="ink && cd canvas/packages/trillian"
alias tril="trillian"
alias hog="ink && cd canvas/packages/hogwarts"
alias prov="ink && cd provisioning"
alias fluid="ink && cd canvas/packages/fluid"
alias util="ink && cd studio-utility"
alias uatu="ink && cd canvas/packages/uatu"
alias ua="uatu"
alias MI="tmux attach -t MI"
alias WORK="tmux attach -t WORK"
