# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
shopt -s autocd
set -o vi
# User specific aliases and functions
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi

# added by Anaconda2 installer
export PATH="/home/andrea/bin/azure-functions-cli:/home/andrea/bin/Telegram:/home/andrea/anaconda2/bin:$PATH"
export BROWSER=google-chrome
export EDITOR=vim
export HISTCONTROL=ignoreboth
alias icat="kitty +kitten icat"
alias mdcat="mdcat -p"
alias l.='ls -d .* --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'
alias cdc='cd ~/doc'
alias cdw='cd ~/Downloads'
alias cds='cd ~/src'
alias cdm='cd ~/Music'
alias cfrc='vim ~/.config/openbox/rc.xml'
alias cfbs='vim ~/.bashrc'
alias yt='youtube-dl --add-metadata'
alias ft='du -a ~/Downloads/*.torrent | cut -f2 | fzf'
alias ff="find ~/doc -type f -name '*.txt' -o -name '*.md' | cut -f2 | fzf --preview='bat {}'| parallel -X --tty $EDITOR"
alias fp='zathura $(find ~/doc -type f -name *.pdf| cut -f2 | fzf )'
alias yta='yt -x -f bestaudio/best'
alias bettie='feh --bg-max --no-fehbg --randomize /home/andrea/doc/screen/bp'
alias dtf='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
[ -r /home/andrea/.byobu/prompt ] && . /home/andrea/.byobu/prompt   #byobu-prompt#


source "$HOME/.cargo/env"
