#!/bin/zsh

javac src/**/*.java -d bin
echo 'output:'
start=`date +%s%N`
java -cp bin ca.retrocraft.projecteuler.Problem$1
end=`date +%s%N`
echo '\nelapsed time:'
echo `expr $end - $start` ns
