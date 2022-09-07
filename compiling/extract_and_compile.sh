#!/usr/bin/env bash

num=$1

tar -zxf NthPrime.tgz 
cd NthPrime
#Don't entirely understand gcc. What does wall do? What is linking? Why dp we need to output it into another NthPrime directory?
gcc -Wall main.c nth_prime.c -o NthPrime
#I know that "./" means curent directory but why do we need this before executing NthPrime?
./NthPrime $num

