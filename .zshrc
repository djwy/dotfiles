# load brew for M1
eval "$(/opt/homebrew/bin/brew shellenv)"

# add my scripts to the path
export PROJECTS_PATH="$HOME/dev"
export PATH="$HOME/.bin:$PATH"

unsetopt nomatch

# turn carriage returns into newlines
stty icrnl

# add SSH keys
# ssh-add --apple-load-keychain

bindkey -v
bindkey '^E' end-of-line

# load zgenom
source "${HOME}/.zgenom/zgenom.zsh"

# if the init script doesn't exist
if ! zgenom saved; then
  # load eval plugin
  zgenom load jandamm/zgenom-ext-eval

  # specify plugins here
  zgenom eval "$(starship init zsh)"
  zgenom load starship/starship
  zgenom load Aloxaf/fzf-tab
  zgenom load zsh-users/zsh-autosuggestions
  zgenom load zsh-users/zsh-completions
  zgenom load zdharma-continuum/fast-syntax-highlighting

  # generate the init script from plugins above
  zgenom save
fi

# HISTORY
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000000
SAVEHIST=$HISTSIZE

# ENV VARIABLES
ZSH_AUTOSUGGEST_MANUAL_REBIND=1  # make prompt faster
export EDITOR='nvim'
export FZF_DEFAULT_COMMAND='rg --no-messages --files --ignore-case --hidden --follow --glob "!.git/*"'
export KEYTIMEOUT=1
export USING_ASDF=true
export VISUAL="$EDITOR"

# ALIASES
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

# FZF
[ -f ~/.fzf.zsh ] && source $HOME/.fzf.zsh

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

. $(brew --prefix asdf)/libexec/asdf.sh
