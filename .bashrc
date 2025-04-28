# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
if ! [[ "$PATH" =~ "$HOME/.radicle/bin:" ]]
then
    PATH="$HOME/.radicle/bin:$PATH"
fi
if ! [[ "$PATH" =~ "$HOME/.foundry/bin:" ]]
then
    PATH="$HOME/.foundry/bin:$PATH"
fi
if ! [[ "$PATH" =~ "$HOME/go/bin:" ]]
then
    PATH="$HOME/go/bin:$PATH"
fi
if ! [[ "$PATH" =~ "$HOME/.fly" ]]
then
  PATH="$HOME/.fly/bin:$PATH"
fi
if ! [[ "$PATH" =~ "$HOME/.zapstore" ]]
then
  PATH="$HOME/.zapstore:$PATH"
fi
if ! [[ "$PATH" =~ "$HOME/.cargo/bin:" ]]
then
    PATH="$HOME/.cargo/bin:$PATH"
fi
if ! [[ "$PATH" =~ ".:" ]]
then
    PATH=".:$PATH"
fi
export PATH

export EDITOR=nvim

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
[ -r ~/.byobu/prompt ] && . ~/.byobu/prompt   #byobu-prompt#

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
