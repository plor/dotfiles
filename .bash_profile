# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then
	. ~/.nix-profile/etc/profile.d/nix.sh
fi

if [ -f ~/.bash_secrets ]; then
	. ~/.bash_secrets
fi
