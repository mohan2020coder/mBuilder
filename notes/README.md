brew install shivammathur/php/php-zts brotli watcher
brew link --overwrite --force shivammathur/php/php-zts

export CGO_CFLAGS="$(php-config --includes) -I$(brew --prefix)/include"
export CGO_LDFLAGS="$(php-config --ldflags) $(php-config --libs) -L$(brew --prefix)/lib" 
export LD_LIBRARY_PATH=/home/linuxbrew/.linuxbrew/lib:$LD_LIBRARY_PATH

./mbuilderv1 php-server --listen :8080 --root ./public


./mbuilderv1 run --config ./Caddyfile


-------------------------------------------


brew install shivammathur/php/php-zts brotli watcher
brew link --overwrite --force shivammathur/php/php-zts

git clone https://github.com/mohan2020coder/mBuilder
cd mBuilder/


brew --prefix
ls $(brew --prefix)/include/brotli/decode.h
ls $(brew --prefix)/include/wtr/watcher-c.h


wget https://go.dev/dl/go1.25.0.linux-amd64.tar.gz
clear
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.25.0.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
source ~/.bashrc
go version


cd mBuilder/caddy/frankenphp

export CGO_CFLAGS="$(php-config --includes) -I$(brew --prefix)/include"
export CGO_LDFLAGS="$(php-config --ldflags) $(php-config --libs) -L$(brew --prefix)/lib" 
go build -tags=nobadger,nomysql,nopgx


LD_LIBRARY_PATH=/home/linuxbrew/.linuxbrew/lib ./frankenphp --help


echo '<?php echo "hello world\n"; ?>' > test.php
LD_LIBRARY_PATH=/home/linuxbrew/.linuxbrew/lib ./frankenphp php-cli test.php


LD_LIBRARY_PATH=/home/linuxbrew/.linuxbrew/lib 
./mbuilderv1 php-cli -r 'echo "hello world\n";'



export LD_LIBRARY_PATH=/home/linuxbrew/.linuxbrew/lib 
./mbuilderv1 php-cli -r 'echo "hello




-------------------
building with defined name
>myapp

CGO_CFLAGS="$(php-config --includes) -I$(brew --prefix)/include" \
CGO_LDFLAGS="$(php-config --ldflags) $(php-config --libs) -L$(brew --prefix)/lib" \
go build -tags=nobadger,nomysql,nopgx -o mbuilder


---------------------------------------
Download the nightly binary:

curl -fsSL -o spc https://dl.static-php.dev/static-php-cli/spc-bin/nightly/spc-linux-x86_64


Make it executable:

chmod +x spc


Check it:

./spc --version


It should print the SPC version or something like that. If that works, you have the binary.

Use spc to build your PHP binary with extensions, CLI, embed, etc. For example:

./spc download --all

it will download the static php in the directory
