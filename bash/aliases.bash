# enable color support of ls if it seems available
export GREP_COLOR=33
USE_COLOR_CMDS=""
if [ -x /usr/bin/dircolors ]; then
    USE_COLOR_CMDS="true"
    LS_CMD='ls --classify --color=auto'

    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
elif $(gls &> /dev/null); then
    USE_COLOR_CMDS="true"
    LS_CMD='gls --classify --color=auto'
else
    LS_CMD='ls'
fi

if [ ! -z "$USE_COLOR_CMDS" ]; then
    # Highlight search term in grep
    alias grep='grep --color=auto --line-number'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
unset USE_COLOR_CMDS

alias ls="$LS_CMD"
alias ll="$LS_CMD -al"
alias la="$LS_CMD -A"
alias l="$LS_CMD -C"

# Syntax highlighting for less (-R for RAW ^ colors)
alias less='less -R'

alias path='echo $PATH'

# Interactive delete
alias rm='rm -i'

# Verbosely show progress for move and copy
alias cp='cp -v'
alias mv='mv -v'

# Run mplayer full screen on screen 0 and turn off the screensaver
alias mplayerfs='mplayer -fs -zoom -stop-xscreensaver'
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

for FILE in ~/dotfiles/*/aliases.sh
do
    source $FILE
done
