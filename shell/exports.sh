<<<<<<< HEAD
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib:/usr/local/opt/ncurses/lib:/usr/local/opt/ncurses/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include:/usr/local/opt/zlib/include:/usr/local/opt/ncurses/include"

export PKG_CONFIG_PATH=/usr/local/opt/zlib/lib/pkgconfig:$PKG_CONFIG_PATH
export PKG_CONFIG_PATH=/usr/local/opt/ncurses/lib/pkgconfig:$PKG_CONFIG_PATH
#export PKG_CONFIG_PATH=/usr/local/opt/openssl@1.1/lib/pkgconfig:$PKG_CONFIG_PATH
export PKG_CONFIG_PATH=/usr/local/opt/imagemagick@6/lib/pkgconfig:$PKG_CONFIG_PATH

=======
export ARCHFLAGS='-arch x86_64'             # archflags
export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"
>>>>>>> 10530988ae8d337840c1ce2d4a561600302eb61e
