w3mimg () { w3m -o imgdisplay=/usr/lib/w3m/w3mimgdisplay $1}

export TERM="xterm-256color"
export ZSH=/home/sentinel/.oh-my-zsh
export VISUAL="nvim"
export EDITOR=$VISUAL
export PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"
export PATH="/home/sentinel/.gem/ruby/2.6.0/bin:$PATH"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Blur shit. It works!!!
xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id `xdotool search --class urxvt`

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship
ZSH_THEME="spaceship"

# Command auto-correction.
ENABLE_CORRECTION="false"

# Command execution time stamp shown in the history command output.
HIST_STAMPS="mm/dd/yyyy"
plugins=(git colored-man-pages extract sudo virtualenv zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

clear
archey3 -c black

###############################################################
# Aliaxes
# #############################################################

echo "\t~/.vimrc -> editv"
echo "\t~/.Xresources -> editx"
echo "\t~/.config/nvim/init.vim -> editnv"
echo "\t~/.zshrc ->  editz"
alias vim="nvim"
alias neovim="nvim"
alias mirrorUpdate="sudo reflector --latest 250 --protocol https --sort rate --save /etc/pacman.d/mirrorlist"
alias cat="bat"
alias ls="colorls"
alias editz="vim ~/.zshrc"
alias editx="vim ~/.Xresources"
alias editv="vim ~/.vimrc"
alias editnv="vim ~/.config/nvim/init.vim"
alias sourcex="xrdb ~/.Xresources"
alias music="mpd && ncmpcpp"
alias sourcez="source ~/.zshrc"
alias clock="tty-clock -c -C 1 -s"
alias repos='echo "Listing repositories ..." && cd ~/repos && ls'
alias updateDotfilesrepo='cp ~/.zshrc ~/repos/dotfiles && cp ~/.vimrc ~/repos/dotfiles/vim && cp ~/.config/nvim/init.vim ~/repos/dotfiles/vim && cp ~/.Xresources ~/repos/dotfiles && cd ~/repos/dotfiles && gst'
alias backupdotfiles='cp ~/.vimrc ~/.vimrc.bak && cp ~/.Xresources ~/.Xresources.bak && cp ~/.zshrc ~/.zshrc.bak'
alias gtypist='gtypist -c 5,0 --silent'
alias removebeep='sudo rmmod pcspkr'
alias tiling='clear; cat ~/.tiling-gelp.txt'
###############################################################

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# This is only for exercism cli
export PATH=~/bin:$PATH
