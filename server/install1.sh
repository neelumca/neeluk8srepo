#!/bin/bash

JDK=https://download.oracle.com/java/17/archive/jdk-17.0.12_linux-x64_bin.tar.gz
JDK_TAR=/opt/jdk-17.0.12_linux-x64_bin.tar.gz
JDK_SRC=jdk-17.0.12

VAL() 
{
    if [ $1 -eq 0 ]; then
        echo "$2 ..... Success"
    else
        echo "$2 ...... Failed"
        exit 1
    fi
}


echo "Downloading JDK"
cd /opt
wget $JDK
tar -xvf $JDK_TAR
mv $JDK_SRC java
rm -rf $JDK_TAR

VAL $? "JDK Download"