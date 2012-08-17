# This file is only executed for login shells. That means that it gets executed when logging in over SSH or logging into KDE, but not when a new terminal window is opened.

# This is ususally the default, but enforce our assumption
umask 022

# IMPORTANT: Load RVM into a shell session *as a function*
#            Otherwise things like switching gemsets won't work.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# End login specific settings

# Now, source .bashrc to load the rest of the settings for bash
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
