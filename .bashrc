alias downloads="cd ~/Downloads"
alias ~="cd ~"
alias ga="git add -A"
alias gs="git status"
alias gp="git pull"
alias gb="git branch"
alias gd="git diff"
alias gco="git checkout"
alias gcom="gco master"
alias gcm="git commit -m"
alias gpf="git push -u origin HEAD --force-with-lease"
alias gca="git commit --amend"
alias git="hub"
alias .vim="cd ~/.vim"
alias .vimrc="vim ~/.vim/.vimrc"
alias .bash_profile="vim ~/.bash_profile"
alias .bashrc="vim ~/.bashrc"
alias sshadd="ssh-add"
alias cleartmp="rm ~/tmp/*"
alias eclear="rm -rf node_modules && rm -rf tmp && rm -rf dist && npm cache clean --force && bower cache clean"
alias ereset="eclear && yarn"
alias clearbranches="git branch | grep -v \"master\" | xargs git branch -D"
alias td="tmux detach"

openMatchedFiles() {
  vim $(ack $@ -l)
}

openGitDiff() {
  vim $(git diff --name-only HEAD)
}

alias vimack="openMatchedFiles"
alias vimdiff="openGitDiff"

# base16 stuff
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
