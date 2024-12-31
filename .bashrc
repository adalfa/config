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
# export PATH="/home/andrea/bin/azure-functions-cli:/home/andrea/bin/Telegram:/home/andrea/anaconda2/bin:$PATH"  # commented out by conda initialize
export BROWSER=google-chrome
export EDITOR=vim
export HISTCONTROL=ignoreboth
export HISTSIZE=
alias icat="kitty +kitten icat"
alias mdcat="mdcat -p"
alias l.='ls -d .* --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'
alias cdc='cd ~/doc'
alias cdw='cd ~/Downloads'
alias cdg='cd /usr/local/share/store/vm/games'
alias cds='cd ~/src'
alias cdm='cd ~/Music'
alias cfrc='vim ~/.config/openbox/rc.xml'
alias cfbs='vim ~/.bashrc'
alias yt='youtube-dl --add-metadata'
alias ft='du -a ~/Downloads/*.torrent | cut -f2 | fzf'
alias ff="find ~/doc -type f -name '*.txt' -o -name '*.md' | cut -f2 | fzf --preview='bat {}'| parallel -X --tty $EDITOR"
alias fp='zathura --fork $(find ~/doc -type f -name "*.pdf"| cut -f2 | fzf )'
alias backup="xterm -e /usr/bin/rclone copy --update --verbose --transfers 30 --checkers 8 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 1s "/home/andrea/doc" "google:backupdoc" &!"
alias yta='yt -x -f bestaudio/best'
alias bettie='feh --bg-max --no-fehbg --randomize /home/andrea/doc/screen/bp'
alias dtf='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias k=kubectl 
complete -o default -F __start_kubectl k
[ -r /home/andrea/.byobu/prompt ] && . /home/andrea/.byobu/prompt   #byobu-prompt#


source "$HOME/.cargo/env"
source ~/.local/share/icons-in-terminal/icons_bash.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/andrea/anaconda2/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/andrea/anaconda2/etc/profile.d/conda.sh" ]; then
        . "/home/andrea/anaconda2/etc/profile.d/conda.sh"
    else
        export PATH="/home/andrea/anaconda2/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source <(k completion bash)
