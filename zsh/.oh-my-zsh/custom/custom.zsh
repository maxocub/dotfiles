# Add .local/bin to the PATH
export PATH=$HOME/.local/bin:$PATH

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

# Use neovim
export EDITOR=nvim
alias vi="nvim"

# Make Caps Lock an additonal Ctrl
setxkbmap -option ctrl:nocaps

# Ctrl+f to lunch tmux-sessionizer
bindkey -s ^s "tmux-sessionizer\n"
