call plug#begin()

Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'

call plug#end()

set term=xterm-256color

let g:multi_cursor_start_word_key      = '<C-n>'

source ~/.config/vim/theme.vim

if !has('gui_running')
  set t_Co=256
endif

if has('syntax')
  syntax on
endif

if has('mouse')
  set mouse=a
endif

set wildmenu
set hlsearch
set ignorecase
set smartcase
set number
set ruler
set autoindent
set nostartofline

set shiftwidth=4
set softtabstop=4
set expandtab

set autoread
set termguicolors
set laststatus=2
set noshowmode

vnoremap <C-c> y:call system("wl-copy", @")<cr>
map <C-v> :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p


    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " unicode symbols
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.crypt = '🔒'
    let g:airline_symbols.maxlinenr = ' '
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.notexists = 'Ɇ'
    let g:airline_symbols.whitespace = 'Ξ'

    " powerline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.colnr = ' '
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = '  '
    let g:airline_symbols.maxlinenr = ' '

