# # Ruby on Rails
# alias sc="[ -f script/console ] && script/console || bundle exec rails console"
# alias sx="[ -f script/console ] && script/console --sandbox || bundle exec rails console --sandbox"
# alias sdb="[ -f script/dbconsole ] && script/console --include-password || bundle exec rails dbconsole --include-password"
# alias ss="[ -f script/server ] && script/server || rails server"
# alias mig="rake db:migrate"
# alias f="script/foreman_turbux"

# alias b='bundle check || bundle'
# alias bo='bundle open'
# alias be='bundle exec'
# alias cap='bundle exec cap'

# # Tests
# alias rsua="bundle exec rake spec:unit:all"
# alias rsp="rake testbot:spec"

function rake
{
  if [ -S .zeus.sock ]; then
    zeus rake "$@"
  elif [ -f Gemfile ]; then
    bundle exec rake "$@"
  else
    command rake "$@"
  fi
}

# function _bundle_spec_names() {
# ruby <<-RUBY
#   NAME_VERSION = '(?! )(.*?)(?: \(([^-]*)(?:-(.*))?\))?'
#   File.open 'Gemfile.lock' do |io|
#     in_specs = false
#     io.lines.each do |line|
#       line.chomp!
#       case
#       when in_specs && line == ''
#         in_specs = false
#       when line =~ /^ +specs:\$/
#         in_specs = true
#       when in_specs && line =~ %r{^ +#{NAME_VERSION}\$}
#         puts \$1
#       end
#     end
#   end
# RUBY
# }

# function _bundle_open() {
#   local curw
#   COMPREPLY=()
#   curw=${COMP_WORDS[COMP_CWORD]}
#   COMPREPLY=($(compgen -W '$(_bundle_spec_names)' -- $curw));
#   return 0
# }
# if type complete > /dev/null 2>&1; then
#   complete -F _bundle_open bo
# fi
