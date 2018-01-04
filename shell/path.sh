# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
source ~/.profile

function prepend_path() {
  if [ -d "$1" ]; then
    PATH="$1:$PATH"
  fi
}
function append_path() {
  if [ -d "$1" ]; then
    PATH="$PATH:$1"
  fi
}

PATH=$(getconf PATH)

prepend_path '/usr/bin'
prepend_path '/usr/sbin'
prepend_path '/usr/local/bin'
prepend_path '/usr/local/sbin'
prepend_path '~/bin'
prepend_path  '~/.rvm/bin'
prepend_path '/usr/local/opt/coreutils/libexec/gnubin'
unset append_path

[ -s "$NVM_DIR/nvm.sh"  ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
