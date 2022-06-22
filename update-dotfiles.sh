#/bin/sh
cd $HOME/.dotfiles
eix-installed -a > installed
cat /var/lib/portage/world > world
git add .
git commit -m "$(date)"
git push -u origin main
