#!/bin/zsh

count=`find . -name "Problem???.cpp" | wc -l`
echo "PROJECT EULER: Problem $1 (of $count)"
echo "====================================="
g++ src/c++/Problem$1.cpp -o bin/Problem$1 -std=gnu++17
./bin/Problem$1
