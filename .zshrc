# Source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Aliases
alias be='bundle exec'
alias gd='git diff --color=always | less -R'
alias gl='git llog | less -R'
alias gs='git status'
alias irb='pry'
alias l='ls'
alias ls='ls -GFhla'
alias prune='nonmaster_branches | xargs -I {} git branch -d {}'
# alias rake='noglob rake'
alias rbtest='ruby -Itest'
alias reload_shell='source $HOME/.zshrc'
alias vi='nvim'

nonmaster_branches () {
  CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
  BRANCHES_TO_EXCLUDE="master\|production\|$CURRENT_BRANCH"
  echo $(git branch | grep -v $BRANCHES_TO_EXCLUDE) | tr " " "\n"
}

eval "$(rbenv init -)"
eval "$(nodenv init -)"

export EDITOR="$VISUAL"
export FZF_DEFAULT_COMMAND='rg --files --hidden --ignore-case ""'
export KEYTIMEOUT=1
export VISUAL='nvim'

[ -f ~/.fzf.zsh ] && source $HOME/.fzf.zsh
