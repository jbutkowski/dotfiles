# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

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
prepend_path '/usr/local/bin'
prepend_path '/usr/local/sbin'
prepend_path '~/bin'
prepend_path  '~/.rvm/bin'
prepend_path  '~/.node/bin'
prepend_path '/usr/local/opt/coreutils/libexec/gnubin'


unset prepend_path
unset append_path

# The next line updates PATH for the Google Cloud SDK.
#source '/home/jbutkowski/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
#source '/home/jbutkowski/google-cloud-sdk/completion.bash.inc'

#NPM_PACKAGES="${HOME}/.npm-packages"
#NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
#PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
#unset MANPATH # delete if you already modified MANPATH elsewhere in your config
#MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
