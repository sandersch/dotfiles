export SPRING_QUIET=1
export RUBY_DEBUG_LOG_LEVEL="ERROR"
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY="YES"
export PGGSSENCMODE="disable"

. "$HOME/.cargo/env"

alias beets='srb && rubocop && bin/parallel_rspec'
alias testdb='bin/rake parallel:drop parallel:setup'
