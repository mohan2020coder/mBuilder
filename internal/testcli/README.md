export CGO_CFLAGS="$(php-config --includes) -I$(brew --prefix)/include"
export CGO_LDFLAGS="$(php-config --ldflags) $(php-config --libs) -L$(brew --prefix)/lib" 
export LD_LIBRARY_PATH=/home/linuxbrew/.linuxbrew/lib:$LD_LIBRARY_PATH