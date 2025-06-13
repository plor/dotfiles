# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f ~/.config/sh/aliases ]; then
	. ~/.config/sh/aliases
fi

if [ -f ~/.config/sh/secrets ]; then
	. ~/.config/sh/secrets
fi

if [ -f ~/.config/sh/shared_env ]; then
	. ~/.config/sh/shared_env
fi
