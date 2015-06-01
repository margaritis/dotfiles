#!/usr/bin/env bash

brew install jenv
brew install maven

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Configure jenv
jenv enable-plugin export
jenv enable-plugin ant
jenv enable-plugin scala
jenv enable-plugin gradle
jenv enable-plugin groovy
jenv enable-plugin maven

addJavaToJenv /System/Library/Java/JavaVirtualMachines/
addJavaToJenv /Library/Java/JavaVirtualMachines/

# Add Java versions to jenv
function addJavaToJenv(){
    for d in $1* ; do
        jenv add "$d/Contents/Home/"
    done
}

jenv global 1.8.0.45
jenv shell 1.8.0.45
