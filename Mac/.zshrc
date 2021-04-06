export ZSH="/Users/vanstark/.oh-my-zsh"
ZSH_THEME="cloud"

export PATH=$PATH:~/.local/bin
export PATH="/Users/vanstark/miniconda3/bin:$PATH"                               
export PATH="/Users/vanstark/software/julia/bin:$PATH"  
export PATH="/Users/vanstark/.gem/ruby/2.6.0/bin:$PATH"
alias ll="ls -alt"
alias r="ranger"
alias f="vifm"
alias t="tmux"
alias ta="tmux attach"
alias vi="nvim"
alias sv="sudo nvim"
alias jn='jupyter notebook'
alias wip='cd ~/Desktop'
alias battery='pmset -g batt' # mac
KYETIMOUT=1
#
# using nvim as aditor
export EDITOR=/usr/local/bin/nvim

export VISUAL=/usr/local/bin/nvim


# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  vi-mode
)

source $ZSH/oh-my-zsh.sh
export PATH="/usr/local/opt/ruby/bin:$PATH"
