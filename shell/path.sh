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
<<<<<<< HEAD
=======
prepend_path "/usr/local/opt/openssl/bin"
>>>>>>> 10530988ae8d337840c1ce2d4a561600302eb61e
prepend_path "/usr/local/opt/apr-util/bin"
prepend_path "/usr/local/opt/libiconv/bin"
prepend_path "/usr/local/opt/libpq/bin"
prepend_path "/usr/local/opt/sqlite/bin"
prepend_path "/usr/local/opt/coreutils/libexec/gnubin"

prepend_path "/usr/local/opt/icu4c/bin"
prepend_path "/usr/local/opt/icu4c/sbin"

<<<<<<< HEAD
#prepend_path "/usr/local/opt/openssl@1.1/bin"
=======
prepend_path "/usr/local/opt/openssl/bin"
>>>>>>> 10530988ae8d337840c1ce2d4a561600302eb61e
prepend_path "/usr/local/opt/apr-util/bin"
prepend_path "/usr/local/opt/libiconv/bin"
prepend_path "/usr/local/opt/libpq/bin"
prepend_path "/usr/local/opt/sqlite/bin"
<<<<<<< HEAD
# prepend_path "/usr/local/opt/openssl/bin"
=======
prepend_path "$HOME/.composer/vendor/bin"
prepend_path "/snap/bin"
>>>>>>> 10530988ae8d337840c1ce2d4a561600302eb61e

unset prepend_path
unset append_path

<<<<<<< HEAD
=======
# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/Downloads/google-cloud-sdk/path.bash.inc"  ]; then source "$HOME/Downloads/google-cloud-sdk/path.bash.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/Downloads/google-cloud-sdk/completion.bash.inc"  ]; then source "$HOME/Downloads/google-cloud-sdk/completion.bash.inc"; fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -r $NVM_DIR/bash_completion  ]] && \. $NVM_DIR/bash_completion

# RVM
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
>>>>>>> 10530988ae8d337840c1ce2d4a561600302eb61e
