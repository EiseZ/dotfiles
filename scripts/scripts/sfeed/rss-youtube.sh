#!/bin/sh
sfeed_update ~/.config/sfeed/sfeedrc

url=$(sfeed_plain $HOME/.cache/sfeed/feeds/youtube_*  | awk '{ gsub("youtube_", ""); print }' |fzf | sed -n 's@^.* \([a-zA-Z]*://\)\(.*\)$@\1\2@p')

if [ -z $url ];
then
    exit 0
fi

mpv --no-config --script-opts=ytdl_hook-ytdl_path=yt-dlp $url | $0
