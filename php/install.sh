#!/usr/bin/env bash

brew install automake autoconf pcre bison re2c mhash libtool icu4c gettext jpeg openssl libxml2 mcrypt gmp libevent
brew link icu4c
brew link --force openssl
brew link --force libxml2


curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew
sudo mv phpbrew /usr/local/bin/phpbrew

phpbrew init

source ~/.phpbrew/bashrc

phpbrew install 7.1.1
phpbrew install 7.0.15
phpbrew install 5.6.30
phpbrew install 5.5.38
phpbrew install 5.4.45

phpbrew use php-5.6.30

brew install virtphp
virtphp create dev

source ~/.virtphp/envs/dev/bin/activate

# http://uk1.php.net/get/php-5.4.43.tar.bz2/from/a/mirror
