
"  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓
"  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
" ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░
" ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██
" ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒
" ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░
" ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░
"    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░
"          ░    ░  ░    ░ ░        ░   ░         ░
"                                 ░
"
"
" ============= Vim-Plug ============== "
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')
let g:vim_bootstrap_langs = "c,erlang,go"
let g:vim_bootstrap_editor = "nvim"

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Must run command :PlugInstall
" Other commands :PlugClean to
" remove plugs, :PlugUpdate to
" well... update. Duh!

call plug#begin('~/.vim/plugged')

Plug 'ryanoasis/vim-devicons'			" pretty icons everywhere
Plug 'hzchirs/vim-material'			" material color themes
Plug 'junegunn/goyo.vim'			" Zen mode
Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rust-lang/rust.vim'
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-fugitive'	               	" git support
Plug 'neoclide/coc.nvim', {'branch': 'release'}	" auto completion, Lang servers ...
" Plug 'neovim/nvim-lspconfig'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'				" fuzzy search integration
Plug 'airblade/vim-rooter'
Plug 'farmergreg/vim-lastplace'
Plug 'tpope/vim-surround'                       "change surrounding parenthesis
Plug '907th/vim-auto-save'			" auto save changes
Plug 'tpope/vim-commentary'			" better commenting
Plug 'tpope/vim-sensible'			" sensible defaults
Plug 'Yggdroot/indentLine'                      " show indentation lines
Plug 'justmao945/vim-clang'                     " For C/C++ code completion
Plug 'psliwka/vim-smoothie'                     " some very smooth ass scrolling
Plug 'herringtondarkholme/yats.vim'		" Typescript highlighting
Plug 'omnisharp/omnisharp-vim'
Plug 'mattn/emmet-vim'                          " emmet autocomplete for vim/neovim
Plug 'machakann/vim-highlightedyank'            " highlight yanked text
Plug 'voldikss/vim-floaterm'                    " a floating terminal
Plug 'pangloss/vim-javascript'
Plug 'ThePrimeagen/vim-be-good', { 'do': './install.sh' }
Plug 'omnisharp/omnisharp-vim'
Plug 'w0rp/ale'
Plug 'kevinhwang91/rnvimr', { 'do': 'make sync' }
Plug 'ap/vim-css-color'                         " Self explanatory
"Plug 'iamcco/coc-angular'
Plug 'leafgarland/typescript-vim'               " Typescript syntax for vim
Plug 'maxmellon/vim-jsx-pretty'                 " React JSX

call plug#end()

" Settings
syntax on
set hidden                              " Required to keep multiple buffers open multiple buffers
set number relativenumber
set autochdir " Set working directory is always the same as file being edited
set noerrorbells
set visualbell
set autowrite
set autoindent
set showtabline=2
set cursorline
hi CursorLine cterm=NONE ctermbg=black ctermfg=lightgrey
hi VertSplit cterm=NONE ctermbg=darkgrey ctermfg=darkgrey
set nocursorcolumn
set scrolljump=5
set lazyredraw
set synmaxcol=180
set re=1
set ai
set si
set cmdheight=2
set expandtab
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=8
set ignorecase
set smartcase
set hlsearch
set incsearch
set encoding=utf8
set ffs=unix,dos,mac

highlight Comment gui=bold                              " bold comments
highlight Normal gui=none
highlight NonText guibg=none
highlight clear SignColumn                              " use number color for sign column color
let g:yats_host_keyword = 1

" Colors for git (especially the gutter)
hi DiffAdd guibg='#0f111a'
hi DiffChange guibg='#0f111a'

" EMMET Config --
" Final trigger will be <Tab>,,
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
    \ 'javascript.jsx' : {
        \ 'extends': 'jsx',
    \ },
\}

" Config for Floaterm
let g:floaterm_keymap_new       = '<F5>'
let g:floaterm_keymap_kill      = '<F4>'
let g:floaterm_wintyp           = 'floating'
let g:floaterm_wintitle         = 0
let g:floaterm_rootmarkers      = ['.project']

" Trim whitespace with mapping
map <F12> :call TrimWhiteSpace()<CR>
func! TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

"""  MAPPINGS
nmap gs :G<CR>	" git mappings
" Clear search highlight with c-l
" noremap <silent> <C-l> :nohls<Cr><C-l>
" Braces completion
inoremap {<Enter> {<Enter><Enter>}<Up><Tab>
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?
" Alt + arrow keys to move line up or down
map <Alt><Up> dd <Down>p
" Map F6 to NerdTree toggle
nmap <F6> :NERDTreeToggle<CR>
" Remove arrow keys for hard core vim usage
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nnoremap <C-p> :GFiles<CR>
" Easy switch between windows
" Map <Ctrl+w> to ',' to switch between windows
nnoremap , <C-w>w

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" ALE Settings """
let g:ale_fixers = {
        \'rust': ['rustfmt'],
	\'c' : ['clang-format'],
	\'*': ['remove_trailing_lines', 'trim_whitespace', 'uncrustify'],
        \'javascript': ['prettier'],
        \'typescript': ['prettier', 'tslint'],
        \'cpp' : ['clang-format'],
        \'css' : ['prettier'],
        \'html' : ['prettier'],
        \'markdown' : ['prettier'],
        \'yaml': ['prettier'],
        \'json': ['prettier'],
        \}

let g:ale_linters = {
      \'rust': ['rls'],
      \}

let g:ale_rust_rls_toolchain = 'nightly-YYYY-MM-DD'
let g:rustfmt_autosave = 1
let g:ale_fix_on_save = 1
let g:airline#extensions#ale#enabled = 1

" indentLine
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'

" Ranger settings
let g:rnvimr_ex_enable=1

""" Airline Settings """
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled=1

" Airline color theme
let g:airline_theme='material'

" unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'

" " airline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''
