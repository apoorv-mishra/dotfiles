"
" A (not so) minimal vimrc.
"

" You want Vim, not vi. When Vim finds a vimrc, 'nocompatible' is set anyway.
" We set it explicitely to make our position clear!
set nocompatible

filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.

set autoindent             " Indent according to previous line.
set tabstop=8
set softtabstop=0 noexpandtab
set shiftwidth  =8
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.

set ttyfast                " Faster redrawing.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.

set list                   " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

set number                 " Show line numbers.

" Execute pathogen
execute pathogen#infect()

" Recommended syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Open NERDTree with Ctrlr+n
map <C-n> :NERDTreeToggle<CR>

" Runtime path for ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Map Ctrl+p for ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1

" Ignore for ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/vendor/*,*/_vendor*/*

" Yank to system clipboard
set clipboard=unnamedplus

" Enable case-insensitive search
set ignorecase

" Fallback to case-sensitive search in case any capital letters are used
set smartcase

" https://github.com/Quramy/tsuquyomi#integrate-with-syntastic
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
