#/bin/sh
cd $HOME/.dotfiles
xbps-query -l > installed
xbps-query -m > world
git add .
git commit -m "$(date)"
git push -u origin main
