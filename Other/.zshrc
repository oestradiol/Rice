# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

ZSH_THEME="alanpeabody"
# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

source ~/Rice/Other/catppuccin_mocha-zsh-syntax-highlighting.zsh

export DEFAULT_USER="elaina"
export TERM="xterm-256color"
export ZSH=/usr/share/oh-my-zsh

plugins=(archlinux 
	bundler 
	docker 
	jsontools 
	vscode web-search 
	tig 
	gitfast 
	colored-man-pages
	colorize 
	command-not-found 
	cp 
	dirhistory 
	sudo
	git
	zsh-syntax-highlighting
	zsh-autosuggestions) 
# /!\ zsh-syntax-highlighting and then zsh-autosuggestions must be at the end

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

alias neofetch='hyfetch --ascii ~/Rice/Configs/neofetch/uwufetch'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# source /usr/share/nvm/init-nvm.sh

___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

export PATH=/usr/local/sbin
export PATH=/usr/local/bin:$PATH
export PATH=/usr/bin:$PATH
export PATH=$HOME/.dotnet/tools:$PATH
export PATH=/usr/lib/jvm/default/bin:$PATH
export PATH=/usr/bin/site_perl:$PATH
export PATH=/usr/bin/vendor_perl:$PATH
export PATH=/usr/bin/core_perl:$PATH
export PATH=$HOME/.fzf/bin:$PATH
export PATH=/snap/bin:$PATH
export PATH=$HOME/.cabal/bin:$PATH
export PATH=$HOME/.ghcup/bin:$PATH
export PATH=$HOME/Ricing/Bscripts/PathScripts:$PATH
export PATH=$(yarn global bin):$PATH
export PATH=$HOME/.cargo/bin/:$PATH
