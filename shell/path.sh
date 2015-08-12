# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# The next line updates PATH for the Google Cloud SDK.
source '~/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '~/google-cloud-sdk/completion.bash.inc'

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

prepend_path '/usr/sbin'
prepend_path '/usr/sbin'
prepend_path '/usr/local/bin'
prepend_path '/usr/local/sbin'
prepend_path '~/.rvm/bin'
prepend_path '~/bin'
append_path  '~/.rvm/bin'

prepend_path '/usr/local/opt/coreutils/libexec/gnubin'

unset prepend_path
unset append_path

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
