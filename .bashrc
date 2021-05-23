[[ $- != *i* ]] && return

#export PS1='[\u@\h \W]\$ '
#export PS1='\u@\h:\W\$ '
export PS1="\[\033[38;5;12m\]\u\[$(tput sgr0)\]@\[\033[38;5;10m\]\h\[$(tput sgr0)\]:\[\033[38;5;11m\]\w\[$(tput sgr0)\]\\$ "
export HISTSIZE=1000000

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls -F --color=auto'
alias dmesg='dmesg --color=always'

if command -v tmux &>/dev/null && [ -z "$TMUX" ]; then
	tmux
fi

