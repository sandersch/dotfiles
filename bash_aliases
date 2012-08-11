# enable color support of ls if it seems available
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --classify --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    # Highlight search term in grep
    export GREP_COLOR=33
    alias grep='grep --color=auto --line-number'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Syntax highlighting for less (-R for RAW ^ colors)
alias less='less -R'

alias path='echo $PATH'

# Interactive delete
alias rm='rm -i'

# Verbosely show progress for move and copy
alias cp='cp -v'
alias mv='mv -v'

# Run mplayer full screen on screen 0 and turn off the screensaver
alias mplayerfs='mplayer -xineramascreen 1 -fs -zoom -stop-xscreensaver'
alias mplayerfs0='mplayer -xineramascreen 0 -fs -zoom -stop-xscreensaver'
alias mplayerfs1='mplayer -xineramascreen 1 -fs -zoom -stop-xscreensaver'
alias mplayerfs2='mplayer -xineramascreen 2 -fs -zoom -stop-xscreensaver'
alias mplayerfs3='mplayer -xineramascreen 3 -fs -zoom -stop-xscreensaver'
alias mythfs='mythfrontend -nw -geometry 1920x1080+0+0'

alias lmp3="ls *.mp3 > list && chmod a+x list && vim list"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

burndir() { 
    growisofs -dvd-compat -Z /dev/dvdrw3 -R -J -V "$1" "$1" && mplayer /usr/share/sounds/KDE-Im-Phone-Ring.ogg
}

alias gst='git status'
alias update_submodules='git pull --recurse-submodules && git submodule update'
