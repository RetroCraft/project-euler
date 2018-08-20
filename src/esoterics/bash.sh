#!/bin/bash

# Problem 1: Multiples of 3 and 5
seq 1000 | # generate sequence [1..1000]
  awk 'NR % 3 == 0 || NR % 5 == 0' | # select multiples
  paste -sd+ | # join with +
  bc # calculate
