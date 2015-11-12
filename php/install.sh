brew install automake autoconf pcre bison re2c mhash libtool icu4c gettext jpeg openssl libxml2 mcrypt gmp libevent
brew link icu4c
brew link --force openssl
brew link --force libxml2


curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew
sudo mv phpbrew /usr/local/bin/phpbrew

phpbrew init

source ~/.phpbrew/bashrc

phpbrew install 5.6.0
phpbrew install 5.5.17
phpbrew install 5.4.33
phpbrew install 5.3.29

phpbrew use php-5.6.0

brew install virtphp
virtphp create dev

source ~/.virtphp/envs/dev/bin/activate
