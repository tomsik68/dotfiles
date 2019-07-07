#!/usr/bin/fish

if which keychain >/dev/null
  eval (keychain --eval --quiet --confhost)
end
