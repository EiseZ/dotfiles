#!/bin/bash
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	  exec xinit ~/.config/X11/.xinitrc-dwm -- /etc/X11/xinit/xserverrc
fi
