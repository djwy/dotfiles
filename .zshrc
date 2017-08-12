# Source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Aliases 
alias reload_shell='source ~/.zshrc'
alias vi='nvim'
alias be='bundle exec'
alias gs='git status'
alias gl='git llog | less -R'
alias gd='git diff --color=always | less -R'
alias ls='ls -GFhl'
alias l='ls'
alias irb='pry'
# alias rake='noglob rake'
alias rbtest='ruby -Itest'
alias prune='nonmaster_branches | xargs -I {} git branch -d {}'

nonmaster_branches () {
  CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
  BRANCHES_TO_EXCLUDE="master\|production\|$CURRENT_BRANCH"
  echo $(git branch | grep -v $BRANCHES_TO_EXCLUDE) | tr " " "\n"
}

eval "$(rbenv init -)"
eval "$(nodenv init -)"

export EDITOR="$VISUAL"
export FZF_DEFAULT_COMMAND='rg --files --hidden --ignore-case --ignore .git -g ""'
export KEYTIMEOUT=1
export VISUAL='nvim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
