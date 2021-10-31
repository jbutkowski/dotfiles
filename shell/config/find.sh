find() {
  if [ $# = 1 ]
  then
      command find . -iname "*$@*"
  else
      command find "$@"
  fi
}
