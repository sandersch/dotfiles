# Set up path

# Put ~/bin at the front of the path
export PATH=~/bin:$PATH

# Add android sdk tools to path if they exist
ANDROID_SDK="${HOME}/android-sdk/"
[ -d "${ANDROID_SDK}/tools" ] && export PATH=${PATH}:${ANDROID_SDK}/tools
[ -d "${ANDROID_SDK}/platform-tools" ] && export PATH=${PATH}:${ANDROID_SDK}/platform-tools

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Load rvm as a function
[[ -s "/home/charlie/.rvm/scripts/rvm" ]] && source "/home/charlie/.rvm/scripts/rvm"

# Anything inside here only gets executed in interactive shells
if [[ -n "$PS1" ]]; then 
    #TERM=xterm-256color

    # don't put duplicate lines in the history. See bash(1) for more options
    # ... or force ignoredups and ignorespace
    HISTCONTROL=ignoredups:ignorespace

    # append to the history file, don't overwrite it
    shopt -s histappend

    # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
    HISTSIZE=1000
    HISTFILESIZE=2000

    # check the window size after each command and, if necessary,
    # update the values of LINES and COLUMNS.
    shopt -s checkwinsize

    # make less more friendly for non-text input files, see lesspipe(1)
    [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

    # Prompt setup
    if [ -f ~/dotfiles/bash_prompt ]; then
        . ~/dotfiles/bash_prompt
    fi

    # Alias definitions.
    if [ -f ~/.bash_alias ]; then
        . ~/.bash_alias
    fi

    # Enable programmable completion features
    if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
        . /etc/bash_completion
    fi

    # Add clojure stuff to my session
    export CLOJURE_EXT=~/.clojure
    PATH=$PATH:~/opt/clojure-contrib/launchers/bash
    alias clj=clj-env-dir

    # Set up keychain
    keychain ~/.ssh/id_dsa
    . ~/.keychain/$HOSTNAME-sh
    . ~/.keychain/$HOSTNAME-sh-gpg
fi # [[ -n "$PS1" ]]
