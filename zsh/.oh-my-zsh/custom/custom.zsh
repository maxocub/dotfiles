# Add .local/bin to the PATH
export PATH=$HOME/.local/bin:$PATH

# pyenv
export PYENV_ROOT="$HOME/.pyenv"  # sets pyenv root directory
export PATH="$PYENV_ROOT/bin:$PATH"  # adds pyenv to the PATH
eval "$(pyenv init --path)"  # adds pyenv shims to the PATH
eval "$(pyenv init -)"  # enable autocompletion

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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

# Ctrl+s to lunch tmux-sessionizer
bindkey -s ^s "tmux-sessionizer\n"

# Use catppuccin colors for fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
