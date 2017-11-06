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

function d()
{
    cd $1
    c
}

function tomp3()
{
    ffmpeg -i "$1" "${1%.*}.mp3"
}

