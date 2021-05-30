[[ $- != *i* ]] && return 1

bindkey -e
zstyle :compinstall filename '/home/kplant/.zshrc'

autoload -Uz compinit && compinit
autoload -Uz colors && colors

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls -F --color=auto'
alias dmesg='dmesg --color=always'
alias history='history -i'

export PROMPT="%F{12}%n%f@%F{10}%m%f %F{11}%~%f %# "

export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=10000

setopt append_history
setopt share_history
setopt extended_history
setopt histignorespace
setopt histignoredups

if command -v tmux &>/dev/null && [ -z "$TMUX" ]; then
	tmux
fi
