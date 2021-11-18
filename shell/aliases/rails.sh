alias cuke="webpack --cucumber && bundle exec cucumber"

function __database_yml {
  if [[ -f config/database.yml ]]; then
    ruby -ryaml -rerb -e "puts YAML::load(ERB.new(IO.read('config/database.yml')).result)['${RAILS_ENV:-development}']['$1']"
  fi
}

function psql {
  if [[ "$(__database_yml adapter)" == 'postgresql' ]]; then
    PGDATABASE="$(__database_yml database)" command psql "$@"
    return $?
  fi
  command psql "$@"
}
export PSQL_EDITOR='vim +"set syntax=sql"'

function mysql {
  if [[ $# == 0 && "$(__database_yml adapter)" =~ 'mysql' ]]; then
    mysql -uroot "$(__database_yml database)"
    return $?
  fi
  command mysql "$@"
}

# set file and folder permissions in you rails app
alias set-rails-perms="find . -type d -exec chmod -v 0775 {} \; && find . -type f -exec chmod -v 0664 {} \; && find . -type d -name 'bin' -exec chmod -v 0755 {} \; && find ./**/bin -type f -exec chmod -v 0755 {} \; && find . -type f -name master.key -exec chmod -v 0600 {} \;"
