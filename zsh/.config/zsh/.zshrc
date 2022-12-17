HISTFILE=$HOME/.cache/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob
. $HOME/.config/zsh/.zsh_completion

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# eval "$(starship init zsh)"
PS1="%F{blue}%2~ %(?.>.%F{red}~>)%f "

export EDITOR="nvim"

### Alias' ###
alias ls="ls --color"
alias la="ls --color -A"
alias ll="ls --color -al"
alias lt="tree -L"
alias rm="rm -ir"
alias mv="mv -i"
alias mkdir="mkdir -p"
alias v="nvim"
alias se="sudoedit"

ginit() {
  dirname=$(pwd | rev | cut -d "/" -f 1 | rev)
  git init
  ssh git@git-server "mkdir /home/git/git-repos/$dirname && git init --bare /home/git/git-repos/$dirname"
  git remote add origin git@git-server:/home/git/git-repos/$dirname
  git remote set-url --add --push origin git@git-server:/home/git/git-repos/$dirname
}
gserve() {
  dirname=$(pwd | rev | cut -d "/" -f 1 | rev)
  ssh git@git-server "mkdir /home/git/git-repos/$dirname && git init --bare /home/git/git-repos/$dirname"
  git remote add origin git@git-server:/home/git/git-repos/$dirname
  git remote set-url --add --push origin git@git-server:/home/git/git-repos/$dirname
  git push -u origin main
}

### Plugins ###
source $HOME/.config/zsh/plugins/doas.plugin.zsh
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

bindkey "^[\t" autosuggest-accept

ufetch
