# Run mplayer full screen on screen 0 and turn off the screensaver
alias mplayerfs='mplayer -fs -zoom -stop-xscreensaver'
alias mplayerfs0='mplayer -xineramascreen 0 -fs -zoom -stop-xscreensaver'
alias mplayerfs1='mplayer -xineramascreen 1 -fs -zoom -stop-xscreensaver'
alias mplayerfs2='mplayer -xineramascreen 2 -fs -zoom -stop-xscreensaver'
alias mplayerfs3='mplayer -xineramascreen 3 -fs -zoom -stop-xscreensaver'
alias mythfs='mythfrontend -nw -geometry 1920x1080+0+0'

alias lmp3="ls *.mp3 > list && chmod a+x list && vim list"

burndir() {
    growisofs -dvd-compat -Z /dev/dvdrw3 -R -J -V "$1" "$1" && mplayer /usr/share/sounds/KDE-Im-Phone-Ring.ogg
}
