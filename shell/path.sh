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

prepend_path "$HOME/bin"
prepend_path "$HOME/.rvm/bin"
prepend_path "$HOME/.pyenv/bin"
prepend_path "$HOME/bin/FDK/Tools/osx"
prepend_path "$HOME/.composer/vendor/bin"

prepend_path "/usr/bin"
prepend_path "/usr/sbin"
prepend_path "/usr/local/bin"
prepend_path "/usr/local/sbin"

prepend_path "/usr/local/opt/icu4c/bin"
prepend_path "/usr/local/opt/icu4c/sbin"
prepend_path "/usr/local/opt/apr-util/bin"
prepend_path "/usr/local/opt/libiconv/bin"
prepend_path "/usr/local/opt/libpq/bin"
prepend_path "/usr/local/opt/sqlite/bin"
prepend_path "/usr/local/opt/coreutils/libexec/gnubin"

prepend_path "/usr/local/opt/icu4c/bin"
prepend_path "/usr/local/opt/icu4c/sbin"

#prepend_path "/usr/local/opt/openssl@1.1/bin"
prepend_path "/usr/local/opt/apr-util/bin"
prepend_path "/usr/local/opt/libiconv/bin"
prepend_path "/usr/local/opt/libpq/bin"
prepend_path "/usr/local/opt/sqlite/bin"
# prepend_path "/usr/local/opt/openssl/bin"

unset prepend_path
unset append_path

