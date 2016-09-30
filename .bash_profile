# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
unset USERNAME

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

export PS1='[\[\033[01;32m\]\u@\H\[\033[00m\]:\[\033[01;36m\]\W\[\033[00m\]]\$ '

function swap()
{
local TMPFILE=`mktemp -p .`
mv "$1" $TMPFILE
mv "$2" "$1"
mv $TMPFILE "$2"
}
