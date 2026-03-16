proxy() {
  noproxy
  ssh -NfD 0.0.0.0:9999 sshconnect@vpn.erudit.org
  export http_proxy='socks5h://0.0.0.0:9999'
}

noproxy() {
  if [ -n "$(pidof ssh)" ]; then
    killall ssh
  fi
  unset http_proxy
}
