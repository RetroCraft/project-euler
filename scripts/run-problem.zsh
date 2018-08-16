#!/bin/zsh

count=`find . -name "Problem???.java" | wc -l`
echo "PROJECT EULER: Problem $1 (of $count)"
echo "====================================="
javac src/**/*.java -d bin
java -cp bin ProjectEuler $1
