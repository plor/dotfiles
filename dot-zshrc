# Load shared shell scripts
. ~/.config/sh/shared_env
. ~/.config/sh/aliases
. ~/.config/sh/secrets

# Prompt config
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats ' (%F{#888888}%b%f)'
precmd () { vcs_info }
setopt prompt_subst

PS1='%F{#777777}%B%(?..%? )%b%f%F{#bbbbbb}%~%f${vcs_info_msg_0_} > '

# Color and theme config
. /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=none
ZSH_HIGHLIGHT_STYLES[precommand]=none

ZSH_HIGHLIGHT_STYLES[command]="fg=#999999"
ZSH_HIGHLIGHT_STYLES[builtin]="fg=#888888"
ZSH_HIGHLIGHT_STYLES[alias]="fg=#aaaaaa"

# Suggestion config
. /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#555555"
ZSH_AUTOSUGGEST_STRATEGY=(completion match_prev_cmd)

# Completion config
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' glob 1
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 4
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit

# Misc
