# Check for rvm
if test ! $(which rvm); then
  echo "Installing RVM for you."
  ruby -e "$(curl -sSL https://get.rvm.io | bash -s stable)"
else
  printf "RVM is already installed."
fi

rvm install 1.9.3
rvm install 2.2.0
rvm use 2.2.0 --default

# Install gems
source ./deps.sh;