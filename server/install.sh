#!/bin/bash

JDK=https://download.oracle.com/java/17/archive/jdk-17.0.12_linux-x64_bin.tar.gz
MAVEN=https://dlcdn.apache.org/maven/maven-3/3.9.10/binaries/apache-maven-3.9.10-bin.tar.gz

JDK_TAR=/opt/jdk-17.0.12_linux-x64_bin.tar.gz
MAVEN_TAR=/opt/apache-maven-3.9.10-bin.tar.gz
JDK_SRC=jdk-17.0.12
MAVEN_SRC=apache-maven-3.9.10

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

echo "Downloading Maven"
cd /opt
wget $MAVEN
tar -xvf $MAVEN_TAR
mv $MAVEN_SRC maven
rm -rf $MAVEN_TAR

VAL $? "Maven Download"

sed -i '
/<servers>/{
    a\
    <server>\
      <id>deployment</id>\
      <username>admin</username>\
      <password>1234</password>\
    </server>
}' /opt/maven/conf/settings.xml

