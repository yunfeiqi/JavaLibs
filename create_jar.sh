#!/bin/bash

# 打包一个文件夹下所有java 文件成jar包
SRC=$1 
DST=$2
JAR_NAME=$3

find $SRC -name "*.java" > javafile
mkdir -p $DST
mkdir -p $DST/.tmp
javac @javafile -d $DST/.tmp
cd $DST
jar -cvf $JAR_NAME $DST/.tmp/*
rm -rf $DST/.tmp
