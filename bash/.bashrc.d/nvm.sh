lazy_load_nvm() {
  unset -f nvm
  export NVM_DIR="$HOME/.nvm"
  # shellcheck source=/home/maxocub/.nvm/nvm.sh
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  # shellcheck source=/home/maxocub/.nvm/bash_completion
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
}

nvm() {
  lazy_load_nvm
  nvm "$@"
}
