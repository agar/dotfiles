call pathogen#infect()

filetype off
filetype plugin indent on
set nocompatible
set modelines=0

" Spaces not tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set showcmd         " Show (partial) command in status line.
set autowrite       " Automatically save before commands like :next and :make
set hidden          " Hide buffers when they are abandoned
set mouse=nc        " Enable mouse usage (normal and command modes only)

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
"set relativenumber
set undofile

" Use normal regexes for searching
nnoremap / /\v
vnoremap / /\v

set ignorecase      " Do case insensitive matching
set smartcase       " Do smart case matching
set gdefault        " Applies substitutions globally on lines
set showmatch       " Show matching brackets.
set incsearch       " Incremental search
set hlsearch        " Highlight search

" Clear search highlight with \<space>
nnoremap <leader><space> :noh<cr>

" Jump between matching bracket with the tab character
nnoremap <tab> %
vnoremap <tab> %


nnoremap <leader>n :NERDTree<cr>
vnoremap <leader>n :NERDTree<cr>

" Wrap lines
set wrap

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

"Invisible character colors
highlight NonText guifg=#222222
highlight SpecialKey guifg=#222222

" Disable the help key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Save when losing focus
au FocusLost * :wa

" Shortcut to trim trailing whitespace
nnoremap <leader>W :%s/\s\+$//g<cr>:let @/=''<CR>

" Shortcut to order css properties
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>

"Code completion
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP


if has("gui_running")
    set guifont=Monospace\ 8
    set background=dark
    colorscheme solarized
else
    set t_Co=256
    let g:solarized_termcolors=256
    set background=dark
    colorscheme solarized
endif
