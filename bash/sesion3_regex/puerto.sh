#!/bin/bash

re="^([1-9][[:digit:]]{0,3}|[1-5][[:digit:]]{4}|6[0-4][[:digit:]]{3}|65[0-4][[:digit:]]{2}|655[0-2][[:digit:]]|6553[0-5])$"

if [[ $1 =~ $re ]]; then
    echo "Puerto $1 valido "
else
    echo "Puerto $1 invalido"
fi

