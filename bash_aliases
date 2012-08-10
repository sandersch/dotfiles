# Highlight search term in grep
export GREP_COLOR=33
alias grep='grep --line-number --color=auto'
# Syntax highlighting for less (-R for RAW ^ colors)
alias less='less -R'
# Color ls with type indicators
alias ls='ls --classify --color=auto'

alias path='echo $PATH'

# Interactive delete
alias rm='rm -i'

# Verbosely show progress for move and copy
alias cp='cp -v'
alias mv='mv -v'

# Show process name when pgrapping
#alias pgrep="pgrep -l"

# Run mplayer full screen on screen 0 and turn off the screensaver
alias mplayerfs='mplayer -xineramascreen 1 -fs -zoom -stop-xscreensaver'
alias mplayerfs0='mplayer -xineramascreen 0 -fs -zoom -stop-xscreensaver'
alias mplayerfs1='mplayer -xineramascreen 1 -fs -zoom -stop-xscreensaver'
alias mplayerfs2='mplayer -xineramascreen 2 -fs -zoom -stop-xscreensaver'
alias mplayerfs3='mplayer -xineramascreen 3 -fs -zoom -stop-xscreensaver'
alias mythfs='mythfrontend -nw -geometry 1920x1080+0+0'

alias lmp3="ls *.mp3 > list && chmod a+x list && vim list"

burndir() { 
    growisofs -dvd-compat -Z /dev/dvdrw3 -R -J -V "$1" "$1" && mplayer /usr/share/sounds/KDE-Im-Phone-Ring.ogg
}

alias gst='git status'
