# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

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

# git
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export PS1='\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1)\$ '

# pyenv
export PYENV_ROOT="$HOME/.pyenv"  # sets pyenv root directory
export PATH="$PYENV_ROOT/bin:$PATH"  # adds pyenv to the PATH
eval "$(pyenv init --path)"  # adds pyenv shims to the PATH
eval "$(pyenv init -)"  # enable autocompletion

# proxy
proxy() {
  noproxy
  ssh -NfD 0.0.0.0:8181 sshconnect@vpn.erudit.org
  export http_proxy='socks5h://0.0.0.0:8181'
}
noproxy() {
  if [ -n "$(pidof ssh)" ]
  then
    killall ssh
  fi
  unset http_proxy
}

export EDITOR=nvim
alias vi=nvim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Make Caps Lock an additonal Ctrl
setxkbmap -option ctrl:nocaps

bind '"\C-f":"tmux-sessionizer\n"'
