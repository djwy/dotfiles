# Add my scripts to the path
export PROJECTS_PATH="$HOME/dev"
export PATH="$HOME/.bin:$PATH"

unsetopt nomatch

# turn carriage returns into newlines
stty icrnl

ssh-add -A

bindkey -v
bindkey '^E' end-of-line

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

# zinit snippet PZT::modules/helper/init.zsh
# zinit snippet PZT::modules/utility/init.zsh
# zinit snippet PZT::modules/syntax-highlighting/init.zsh
# zinit snippet PZT::modules/history/init.zsh
# zinit snippet PZT::modules/history-substring-search/init.zsh
# zinit snippet PZT::modules/autosuggestions/init.zsh
# zinit snippet PZT::modules/completion/init.zsh

# PROMPT
zinit ice from"gh-r" as"command" atload'eval "$(starship init zsh)"'
zinit light starship/starship

# FZF-TAB
zinit ice wait"1" lucid
zinit light Aloxaf/fzf-tab

# AUTOSUGGESTIONS
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
zinit ice wait"0a" lucid atload"_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions

# TAB COMPLETIONS
zinit ice wait"0b" lucid blockf
zinit light zsh-users/zsh-completions

# SYNTAX HIGHLIGHTING
zinit ice wait"0c" lucid atinit"zpcompinit;zpcdreplay"
zinit light zdharma/fast-syntax-highlighting

# HISTORY
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=290000
SAVEHIST=$HISTSIZE

# ENV VARIABLES
ZSH_AUTOSUGGEST_MANUAL_REBIND=1  # make prompt faster
export EDITOR='nvim'
export FZF_DEFAULT_COMMAND='rg --files --ignore-case --hidden --follow --glob "!.git/*"'
export KEYTIMEOUT=1
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

. $(brew --prefix asdf)/asdf.sh
