# zsh config
# located in ~/.zshrc

LS_COLORS="ow=01;36;40" && export LS_COLORS

export PATH=~/tools:$PATH
export EDITOR="nvim"                     # $EDITOR opens in terminal
export VISUAL="nvim"                     # $VISUAL opens in GUI mode
export DEFAULT_USER=cbocardo

setopt cdable_vars                       # directory aliases for cd command

autoload -U compinit && compinit         # zsh-completions
source ~/tools/powerlevel10k/powerlevel10k.zsh-theme

source ~/.zsh-aliases                    # custom aliases
source ~/.zsh-machine-specific-aliases   # not sourced

# functions to cd then ls in one step
function cls { cd "$@" && ls }
function cla { cd "$@" && ls -a }
function cll { cd "$@" && ls -l }
function clal { cd "$@" && ls -lal }
function clla { cd "$@" && ls -lla }

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

fpath=(~/tools/zsh-completions/src $fpath)
source ~/tools/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^ ' autosuggest-accept           # for zsh-autosuggestions: C-[Space] to accept

# zsh-syntax-hightlighting works better when sourced outside oh-my-zsh
source ~/tools/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
