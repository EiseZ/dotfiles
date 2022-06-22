# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
. /home/eisezimmerman/.config/zsh/.zsh_completion
# End of lines configured by zsh-newuser-install

/home/eisezimmerman/scripts/try-startx.sh

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# eval "$(starship init zsh)"
PS1="%F{blue}%2~ %(?.->.%F{red}~>)%f "

export EDITOR="nvim"
export PATH="$PATH:$HOME/.local/bin:$HOME/.dotnet:$HOME/downloads/apps/steamcmd:/opt/metasploit-framework:/usr/local/texlive/2021/bin/x86_64-linux"

### Alias' ###
alias ls="ls --color"
alias la="ls --color -A"
alias ll="ls --color -l"
alias lt="tree -L"
alias todo="todo.sh"
alias rm="rm -ir"
alias mv="mv -i"
alias mkdir="mkdir -p"
alias v="nvim"
alias se="sudoedit"
alias rss="newsboat -u .config/newsboat/urls"

### Syntax Highlighting ###
source /usr/share/zsh/site-contrib/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/eisezimmerman/downloads/apps/google-cloud-sdk/path.zsh.inc' ]; then . '/home/eisezimmerman/downloads/apps/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/eisezimmerman/downloads/apps/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/eisezimmerman/downloads/apps/google-cloud-sdk/completion.zsh.inc'; fi
