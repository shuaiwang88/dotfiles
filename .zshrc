# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# for linux
export ZSH=/home/xxxx/.oh-my-zsh
# for mac
# export ZSH=/Users/shuaiwang/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="random"

export PATH=$PATH:~/.local/bin
export PATH="/home/vanstark/miniconda3/bin:$PATH"                               
export PATH="/home/vanstark/Documents/software/julia-1.0.0/bin:$PATH"  
export PATH="/home/vanstark/software/MiniZincIDE-2.2.3-bundle-linux/bin:$PATH" 
alias la="ls -a"
alias r="ranger"
alias t="tmux"
alias ta="tmux attach"
alias v="nvim"
alias sv="sudo nvim"
alias calc='calcurse -D ~/Google\ Drive/Personal/.calcurse'
alias google='w3m google.com'
alias jn='jupyter notebook'
alias wip='cd ~/../../media/SF'
alias lock="i3lock"
KYETIMOUT=1
export BROWSER="firefox"
#
# using nvim as aditor
export EDITOR=/user/bin/nvim
export VISUAL=/user/bin/nvim

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  vi-mode
  archlinux
)

source $ZSH/oh-my-zsh.sh

# export http_proxy=http://user:pass@10.254.xxx.xxx:3128
# export https_proxy=$http_proxy
# export ftp_proxy=$http_proxy
# export no_proxy=localhost
#
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
export GUROBI_HOME="/home/vanstark/software/gurobi810/linux64"                  
export PATH="${PATH}:${GUROBI_HOME}/bin"                                        
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib"                  
export GRB_LICENSE_FILE="$HOME/gurobi.lic"  
