alias gst='git status'
alias update_submodules='git pull --recurse-submodules && git submodule update'
alias gp='git push origin HEAD'
alias gpf='git push origin HEAD --force-with-lease'
alias gb='git co -b'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gwab="git worktree add -b"
alias gwro="git worktree remove"
