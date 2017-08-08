#!/bin/bash

which keychain 2>&1 > /dev/null && eval $(keychain --eval --quiet --confhost)
