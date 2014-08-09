alias vundle='vim +BundleInstall +qall'
alias apt='sudo aptitude'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias c='cucumber -p rerun'
alias cw='cucumber -p wip'
alias ri='ri -f ansi'

# Management
alias dots="cd ~/.dotfiles && vim"
alias reload='source ~/.bash_profile && echo "sourced ~/.bash_profile"'
alias redot='cd ~/.dotfiles && gpp && rake install; cd -'

alias hosts='sudo vim /etc/hosts'
alias vrb='vim -c "setf ruby"'

# http://www.hogbaysoftware.com/products/plaintext
alias text='cd ~/Dropbox/PlainText && vim'

# Shell
alias la='ls -alh'
alias cdd='cd -'  # back to last directory
alias pg='ps aux | head -n1; ps aux | grep -i'
alias tf='tail -F -n200'
alias top='top -ocpu'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Portable ls with colors
if ls --color -d . >/dev/null 2>&1; then
  alias ls='ls --color=auto'  # Linux
elif ls -G -d . >/dev/null 2>&1; then
  alias ls='ls -G'  # BSD/OS X
fi

# I always forget the common options.
alias rsync?="echo 'rsync -az --progress server:/path/ path (Slashes are significant.)'"

# Ruby on Rails
alias sc="[ -f script/console ] && script/console || bundle exec rails console"
alias sx="[ -f script/console ] && script/console --sandbox || bundle exec rails console --sandbox"
alias sdb="[ -f script/dbconsole ] && script/console --include-password || bundle exec rails dbconsole --include-password"
alias ss="[ -f script/server ] && script/server || rails server"
alias mig="rake db:migrate"
alias f="script/foreman_turbux"

alias be="bundle exec"

# Tests
alias rsua="bundle exec rake spec:unit:all"
alias rsp="rake testbot:spec"

