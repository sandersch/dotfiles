alias beets='srb && rubocop && bin/parallel_rspec'
alias testdb='bin/rake parallel:drop parallel:setup'

export PATH="$PATH:~/.cargo/bin/"

export DOCKERIZED_PG_DUMP=true

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
