## Aliases
function ls
	command ls -a --color=auto $argv
end
function ..
	builtin cd ..
end

function pinstall
	command sudo pacman -S $argv
end
function premove
	command sudo pacman -Rcns $argv
end
function plist-unused
	command sudo pacman -Rcns $argv
end
function premove-unused
	command sudo pacman -Rcns (pacman -Qdtq)
end

# dotfiles git alias
function dotfiles
	command git --git-dir=$HOME/dotfiles/ --work-tree=$HOME
end

## Start Starship
starship init fish | source
