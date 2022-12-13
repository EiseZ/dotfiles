#!/bin/sh
url=$(sfeed_plain $HOME/.cache/sfeed/feeds/* | fzf | sed -n 's@^.* \([a-zA-Z]*://\)\(.*\)$@\1\2@p')

if [ -z $url ];
then
    exit 0
fi

firefox --new-window $url && $0
