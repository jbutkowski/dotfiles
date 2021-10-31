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
