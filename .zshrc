# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/janice/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME="cloud"

export PATH=$PATH:~/.local/bin
export PATH="/home/janice/miniconda3/bin:$PATH"                               
export PATH="/home/janice/software/julia/bin:$PATH"  
export PATH="/home/janice/software/MiniZincIDE-2.3.1-bundle-linux/bin:$PATH" 
export PATH="/home/janice/.gem/ruby/2.6.0/bin:$PATH"
alias mini="/home/janice/software/MiniZincIDE-2.3.1-bundle-linux/bin/MiniZincIDE"
alias ll="ls -alt"
alias r="ranger"
alias f="vifm"
alias t="tmux"
alias ta="tmux attach"
alias vi="nvim"
alias sv="sudo nvim"
alias e="emacs -nw"
alias calc='calcurse -D ~/Google\ Drive/Personal/.calcurse'
alias google='w3m google.com'
alias jn='jupyter notebook'
alias wip='cd ~/../../media/SF'
alias lock="i3lock"
alias battery='pmset -g batt' # mac
KYETIMOUT=1
export BROWSER="google-chrome-stable"
#
# using nvim as aditor
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  # vi-mode
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
export GUROBI_HOME="/home/janice/software/gurobi/linux64"                  
export PATH="${PATH}:${GUROBI_HOME}/bin"                                        
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib"                  
export GRB_LICENSE_FILE="$HOME/gurobi.lic"  

