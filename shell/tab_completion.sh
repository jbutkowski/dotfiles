<<<<<<< HEAD
# colorls tab completion
if which gem > /dev/null && [ -f "$(dirname $(gem which colorls))/tab_complete.sh" ]; then
  source $(dirname $(gem which colorls))/tab_complete.sh
fi

if which heroku; then
	HEROKU_AC_BASH_SETUP_PATH=$HOME/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;
fi
=======
#source $(dirname $(gem which colorls))/tab_complete.sh
>>>>>>> 10530988ae8d337840c1ce2d4a561600302eb61e
