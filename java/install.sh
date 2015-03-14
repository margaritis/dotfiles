brew install java
brew install jenv

# Configure jenv
#
eval "$(jenv init -)"
jenv enable-plugin export
jenv enable-plugin ant
jenv enable-plugin golo
jenv enable-plugin gradle
jenv enable-plugin groovy
jenv enable-plugin maven