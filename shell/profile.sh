# load local shell configuration if present
if [[ -f ~/.bashrc.local  ]]
then
   source ~/.bashrc.local
fi

if command -v direnv > /dev/null; then
  eval "$(direnv hook bash)"
fi
