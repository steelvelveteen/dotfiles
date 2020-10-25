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
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# This is for urxvt in i3 desktop environment
# Blur. It works!!!
#xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id `xdotool search --class urxvt`

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship
ZSH_THEME="spaceship"
SPACESHIP_TIME_SHOW="true"

# Command auto-correction.
ENABLE_CORRECTION="false"

# Command execution time stamp shown in the history command output.
HIST_STAMPS="mm/dd/yyyy"
plugins=(git colored-man-pages extract sudo virtualenv zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

clear
###############################################################
# Aliaxes
# #############################################################

#echo "\t~/.vimrc -> editv"
#echo "\t~/.Xresources -> editx"
#echo "\t~/.config/nvim/init.vim -> editnv"
#echo "\t~/.zshrc ->  editz"
#echo "\t~/.alacritty -> edita"
alias vim="nvim"
alias neovim="nvim"
alias cat="bat"
alias ls="colorls"
alias edita="nvim ~/.config/alacritty/alacritty.yml"
alias editz="nvim ~/.zshrc"
alias editv="nvim ~/.vimrc"
alias editnv="nvim ~/.config/nvim/init.vim"
alias music="mpd || ncmpcpp"
alias sourcez="source ~/.zshrc"
alias clock="tty-clock -c -C 1 -s"
alias repos='echo "Listing repositories ..." && cd ~/repos && ls'
alias updateDotfilesrepo='cp ~/.zshrc ~/repos/dotfiles && cp ~/.config/nvim/init.vim ~/repos/dotfiles/vim && cp ~/.config/alacritty/alacritty.yml ~/repos/dotfiles/alacritty && cd ~/repos/dotfiles && gst'
alias backupdotfiles='cp ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bak && cp ~/.zshrc ~/.zshrc.bak'
#alias gtypist='gtypist -c 5,0 --silent'
alias removebeep='sudo rmmod pcspkr'
###############################################################

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
