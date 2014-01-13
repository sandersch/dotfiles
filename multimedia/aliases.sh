# Run mplayer full screen on screen 0 and turn off the screensaver
alias mplayerfs='mplayer -fs -zoom -stop-xscreensaver'
alias mplayerfs0='mplayer -xineramascreen 0 -fs -zoom -stop-xscreensaver'
alias mplayerfs1='mplayer -xineramascreen 1 -fs -zoom -stop-xscreensaver'
alias mplayerfs2='mplayer -xineramascreen 2 -fs -zoom -stop-xscreensaver'
alias mplayerfs3='mplayer -xineramascreen 3 -fs -zoom -stop-xscreensaver'
alias mythfs='mythfrontend -nw -geometry 1920x1080+3840+0'
alias mythqs='mythfrontend -w -geometry 920x540'

alias lmp3="ls *.mp3 > list && chmod a+x list && vim list"

burndir() {
  burndir_with "$1" "/dev/sr0"
}

burndir_with() {
  full_dir_name=`readlink -f "$1"`
  volume_title=`basename "$full_dir_name" | perl -ne 'chomp and print'`

  growisofs -dvd-compat -Z "$2" -R -J -V "$volume_title" "$1"
}
