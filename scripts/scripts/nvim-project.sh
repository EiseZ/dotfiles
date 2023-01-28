project=$(ls ~/documents/code/*/* -d | sed -r 's/^.+\/(.+\/.+)$/\1/' | fzf)
nvim --cmd ":cd ~/documents/code/$project"

