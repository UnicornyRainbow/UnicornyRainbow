# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PS1="\[\e[35m\]\# > \[\e[33m\]\t >\[\e[36m\] \W >\`if [ \$? != 0 ]; then echo '\a\[\e[1;31m\] error >'; fi\`\[\e[0;00m\] "

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# aliases

alias gimme='sudo dnf install'
alias getout='sudo dnf remove'
alias news='sudo dnf upgrade'
alias clean='sudo dnf autoremove'
alias play='nvlc ./'

hyfetch
