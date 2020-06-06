#!/usr/bin/env bash

temp=$(egrep -cv '#|^$' guessinggame.sh)
echo "Number of code lines in guessinggame.sh is $temp"
