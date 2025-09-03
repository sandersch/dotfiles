alias beets='srb && rubocop && bin/parallel_rspec'
alias testdb='bin/rake parallel:drop parallel:setup'

export PATH="$PATH:~/.cargo/bin/"

export DOCKERIZED_PG_DUMP=true

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

alias readonly="PROD_REPLICA_PASSWORD='op://p3hh25rpgtgb6codrqakfh2o3y/vy6j52fj24tf6lox2fvsm4rnhu/password' op run --no-masking -- bin/rails_console_production_replica"
