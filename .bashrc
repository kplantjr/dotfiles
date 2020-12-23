export LD_LIBRARY_PATH="/usr/lib/libressl"

export HISTSIZE=1000000

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls -F --color=auto'
alias dmesg='dmesg --color=always'

if command -v tmux &>/dev/null && [ -z "$TMUX" ]; then
	tmux
fi

