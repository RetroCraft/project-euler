#!/bin/zsh

javac src/**/*.java -d bin
java -cp bin ca.retrocraft.projecteuler.ProjectEuler $1
