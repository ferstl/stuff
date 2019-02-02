#!/bin/bash

# Locations
JDK_ROOT=/Library/Java/JavaVirtualMachines

# JDK definitions
JDK7=jdk1.7.0_71
JDK8=jdk1.8.0_192
JDK9=jdk-9
JDK10=jdk-10.0.1
JDK11=jdk-11.0.2

DEFAULT_JDK="$JDK11"

# Switch the JDK to the given verison
# The switch will set JAVA_HOME and add it to the PATH
# $1: The name of the JDK directory unter $JDK_ROOT
switch_jdk() {
  jdk=$1
  java_home_orig="$JAVA_HOME"
  ps1_suffix=" [$jdk] "

  # Set JAVA_HOME and replace it in PATH (if available)
  export JAVA_HOME="$JDK_ROOT/$jdk.jdk/Contents/Home"
  if [ ! -z "$java_home_orig" ]; then
    export PATH=`echo $PATH | sed "s;$java_home_orig;$JAVA_HOME;g"`
  fi

  # If JAVA_HOME is not in PATH (i.e. it wasn't before either), forcibly set it
  if [[ "$PATH" != *"$JAVA_HOME"* ]]; then
    export PATH="$JAVA_HOME/bin:$PATH"
  fi

  if [[ "$jdk" == "$DEFAULT_JDK" ]]; then
    ps1_suffix=" "
  fi

  # Set PS1. First clear possibly set JDK suffixes
  export PS1=`echo $PS1 | sed "s; \[jdk.*\].*;;g"`
  PS1="$PS1$ps1_suffix"
}

