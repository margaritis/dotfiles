#!/usr/bin/env bash

brew install automake autoconf pcre bison re2c mhash libtool icu4c gettext jpeg openssl libxml2 mcrypt gmp libevent libiconv bzip2 libzip curl
brew link icu4c
brew link --force openssl
brew link --force libxml2


curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew
sudo mv phpbrew /usr/local/bin/phpbrew

phpbrew init

source ~/.phpbrew/bashrc

# #
# if ! phpbrew  list | grep "7.3.11"; then
#     phpbrew install --mirror=https://www.php.net -j $(sysctl -n hw.ncpu) 7.3.11 +default +mysql +fpm +openssl=`brew --prefix openssl` +iconv="$(brew --prefix libiconv)" +bz2="$(brew --prefix bzip2)" +zlib="$(brew --prefix zlib)"
# fi

# if ! phpbrew  list | grep "7.2.24"; then
#     phpbrew install --mirror=https://www.php.net -j $(sysctl -n hw.ncpu) 7.2.24 +default +mysql +fpm +openssl=`brew --prefix openssl` +iconv="$(brew --prefix libiconv)" +bz2="$(brew --prefix bzip2)" +zlib="$(brew --prefix zlib)"
# fi

# if ! phpbrew  list | grep "5.6.40"; then
#     phpbrew install --mirror=https://www.php.net -j $(sysctl -n hw.ncpu) 5.6.40 +default +mysql +fpm +openssl=`brew --prefix openssl` +iconv="$(brew --prefix libiconv)" +bz2="$(brew --prefix bzip2)" +zlib="$(brew --prefix zlib)" +curl="$(brew --prefix curl)"
# fi

# # phpbrew install --mirror=https://www.php.net -j $(sysctl -n hw.ncpu) 5.5 +default +mysql +fpm +openssl=`brew --prefix openssl` +iconv="$(brew --prefix libiconv)" +bz2="$(brew --prefix bzip2)" +zlib="$(brew --prefix zlib)" +curl="$(brew --prefix curl)"
# # phpbrew install --mirror=https://www.php.net -j $(sysctl -n hw.ncpu) 5.4 +default +mysql +fpm +openssl=`brew --prefix openssl` +iconv="$(brew --prefix libiconv)" +bz2="$(brew --prefix bzip2)" +zlib="$(brew --prefix zlib)" +curl="$(brew --prefix curl)"

phpbrew use 7.3.11
phpbrew app get composer

#brew install virtphp
wget -O virtphp  https://github.com/virtphp/virtphp/releases/download/v0.5.1-alpha/virtphp.phar
chmod +x virtphp
mv virtphp $HOME/bin/virtphp
virtphp create dev

source ~/.virtphp/envs/dev/bin/activate

# http://uk1.php.net/get/php-5.4.43.tar.bz2/from/a/mirror
