# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Omarchy environment (OMARCHY_PATH + PATH), needed even for non-interactive shells
[[ -r /usr/share/omarchy/default/bash/env-bootstrap ]] && source /usr/share/omarchy/default/bash/env-bootstrap

# Load zsh options, keybindings, and completion
[[ -f /usr/share/omarchy-zsh/shell/zoptions ]] && source /usr/share/omarchy-zsh/shell/zoptions

# Load shared shell configuration (aliases, functions, environment, tool init)
[[ -f /usr/share/omarchy-zsh/shell/all ]] && source /usr/share/omarchy-zsh/shell/all

# Omarchy environment/locale/PATH handling (idempotent, zsh-safe)
[[ -r $OMARCHY_PATH/default/bash/envs ]] && source "$OMARCHY_PATH/default/bash/envs"

# Omarchy aliases and shared functions (zsh-compatible; updated with omarchy)
[[ -r $OMARCHY_PATH/default/bash/aliases ]] && source "$OMARCHY_PATH/default/bash/aliases"
[[ -r $OMARCHY_PATH/default/bash/functions ]] && source "$OMARCHY_PATH/default/bash/functions"

# Tool integrations (zsh variants of omarchy's bash init)
if command -v mise &> /dev/null; then
  eval "$(mise activate zsh)"
fi

if command -v zoxide &> /dev/null; then
  eval "$(zoxide init zsh)"
fi

if command -v try &> /dev/null; then
  try() {
    unset -f try
    eval "$(SHELL=/bin/zsh command try init ~/Work/tries)"
    try "$@"
  }
fi

if command -v fzf &> /dev/null; then
  [[ -r /usr/share/fzf/completion.zsh ]] && source /usr/share/fzf/completion.zsh
  [[ -r /usr/share/fzf/key-bindings.zsh ]] && source /usr/share/fzf/key-bindings.zsh
fi

# Prompt (starship; config in ~/.config/starship.toml)
if [[ $- == *i* ]] && [[ ${TERM:-} != "dumb" ]] && command -v starship &> /dev/null; then
  eval "$(starship init zsh)"
fi

# Add your own customizations below
#
# Make an alias for invoking commands you use constantly
# alias p='python'
# alias cx="claude --permission-mode=plan --allow-dangerously-skip-permissions"

# Personal shared shell scripts
[[ -r ~/.config/sh/shared_env ]] && . ~/.config/sh/shared_env
[[ -r ~/.config/sh/aliases ]] && . ~/.config/sh/aliases
[[ -r ~/.config/sh/secrets ]] && . ~/.config/sh/secrets

