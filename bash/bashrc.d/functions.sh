#!/bin/bash

function mdcd()
{
    mkdir "$@"
    cd "$@"
}

function swap()
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}
