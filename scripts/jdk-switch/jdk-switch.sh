#!/bin/bash

DEFAULT_JDK="21"

# Switch the JDK to the given verison
# The switch will set JAVA_HOME and add it to the PATH
# $1: The name of the JDK directory unter $JDK_ROOT
switch_jdk() {
  jdk=$1
  
  # Set JAVA_HOME
  export JAVA_HOME=$(/usr/libexec/java_home -v${jdk})
}

