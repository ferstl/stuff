# Stuff
*- Random stuff, experiments, quick hacks, etc.*

## JDK Switcher (for macOS)

Setup JDK Switcher:

    # 1. Checkout this repo
    # 2. edit ~/.profile
    
    export PATH=<path/to/scripts>:$PATH
    . jdk-switch.sh
    switch_jdk $DEFAULT_JDK

Use JDK Switcher:

    # Open a shell
    # The default JDK will be on your PATH
    $ java -version
    java version "1.8.0_121"
    Java(TM) SE Runtime Environment (build 1.8.0_121-b13)
    Java HotSpot(TM) 64-Bit Server VM (build 25.121-b13, mixed mode)
    
    # swith the JDK (non-default JDKs will be shown on the promt)
    $ jdk9
    [jdk-9.jdk]$ java -version
    java version "9-ea"
    Java(TM) SE Runtime Environment (build 9-ea+152)
    Java HotSpot(TM) 64-Bit Server VM (build 9-ea+152, mixed mode)
