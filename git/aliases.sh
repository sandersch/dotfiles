alias gst='git status'
alias update_submodules='git pull --recurse-submodules && git submodule update'
alias gp='git push origin HEAD'
alias gph='git push heroku HEAD'
alias gb='git co -b'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gist="jist --open"
