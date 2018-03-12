# Source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Add my scripts to the path
export PROJECTS_PATH="$HOME/dev"
export PATH="$HOME/.bin:$PATH"

# Aliases
alias be='bundle exec'
alias gd='git diff --color=always | less -R'
alias gl='git llog | less -R'
alias gs='git status'
alias irb='pry'
alias l='ls'
alias ls='ls -GFhla'
alias prune='nonmaster-branches | xargs -I {} git branch -d {}'
alias rbtest='ruby -Itest'
alias reload_shell='source $HOME/.zshrc'
alias vi='nvim'

eval "$(rbenv init -)" 2> /dev/null
eval "$(nodenv init -)" 2> /dev/null

export EDITOR='nvim'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --ignore-case --hidden --follow --glob "!.git/*"'
export KEYTIMEOUT=1
export VISUAL="$EDITOR"

unsetopt nomatch

# turn carriage returns into newlines
stty icrnl

ssh-add -A

[ -f ~/.fzf.zsh ] && source $HOME/.fzf.zsh
