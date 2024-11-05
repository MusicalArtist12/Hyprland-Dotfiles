#!/usr/bin/env bash

if [ ! -z "$1" ]; then
    coproc ( firefox -search $1 > /dev/null 2>&1 )
fi
