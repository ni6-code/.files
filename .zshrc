HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY
setopt correct
setopt autocd

autoload -U colors && colors

autoload -Uz compinit
compinit

export PATH="$HOME/.local/bin:$PATH"
export EDITOR="vim"

export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d'
export FZF_PREVIEW_COMMAND="bat --style=numbers --color=always --line-range :500 {} 2>/dev/null"

#PROMPT="%{$fg[green]%}%n%{$reset_color%}@%{$fg[blue]%}%m%{$reset_color%}:%{$fg[yellow]%}%~%{$reset_color%}$ "

# Aliases

alias ls='eza --icons always'
alias tree='eza --tree --icons always'
alias grep='grep --color=auto'
alias v='vim'
alias la='ls -la'
alias ll='ls -l'
alias ff='fastfetch'

source ~/.secrets/aliases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"
