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
alias l="$LS_CMD -lahrtc"

# Syntax highlighting for less (-R for RAW ^ colors)
alias less='less -R'

alias path='echo $PATH'

# Interactive delete
alias rm='rm -i'

# Verbosely show progress for move and copy
alias cp='cp -v'
alias mv='mv -v'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# shorthand commands for timestamp formats using date(1)
alias datestamp='date +%F' # iso8601
alias timestamp='date +%FT%T%z' # iso8601
alias filestamp='date +%Y%m%dT%H%M%S' # iso8601, avoid special chars
alias exactfilestamp='date +%Y-%m-%d_%H-%M-%S.%N' # include nanoseconds to minimize collisions
alias unixtime='date +%s' # seconds since unix epoch

alias uuid='uuidgen'
alias cleanuuid='uuidgen | tr -d -'

set_term_title(){
  echo -en "\033]0;$1\a"
  echo -en "\033]30;$1\a"
}

# Fully update operating system
if [ -f /etc/debian_version ]; then
  alias update_system="sudo bash -c 'apt-get -y update && apt-get -y upgrade && apt-get -y dist-upgrade && apt-get -y autoremove'"
  remove_old_kernels() {
    sudo apt-get remove --purge $(dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d')
  }
elif [ -f /etc/redhat-release ]; then
  alias update_system="sudo bash -c 'yum -y update'"
elif [ $(uname -s) = "Darwin" ]; then
  alias update_system="brew update && brew upgrade"
  export BASH_SILENCE_DEPRECATION_WARNING=1
fi

# Simulate OSX's pbcopy and pbpaste on other platforms
if [ ! $(uname -s) = "Darwin" ]; then
  alias pbcopy='xsel --clipboard --input'
  alias pbpaste='xsel --clipboard --output'
fi

for FILE in ~/dotfiles/*/aliases.sh; do
  source $FILE
done

#### GEMSTONE STUFF ####
alias countenv='\grep -h "^You unwrap the papyrus envelope and toss it away" ~/lich/logs/GSIV-*/`date +%Y`-* | wc -l'
alias envresults='\grep -h -A1 "^You unwrap the papyrus envelope and toss it away" ~/lich/logs/GSIV-*/`date +%Y`-* | sort | uniq'
alias lorelog='tail -n100 -f `ls -ahrtc ~/lich/logs/GSIV-Jovalon/loresing-* | tail -n1`'
