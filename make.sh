#!/bin/bash
cobc -x SRC/HELLOWORLD.COB -o BIN/HELLOWORLD
cobc -x -free -frelax-syntax SRC/ADDAMT.COB -o BIN/ADDAMT
cobc -x -free -frelax-syntax SRC/CONDITIONNAMES.COB -o BIN/CONDITIONNAMES