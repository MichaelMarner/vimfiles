" --- Get Pathogen to load all the plugins ---
execute pathogen#infect()

" --- Basic stuff ---
set nocompatible
syntax on
filetype on
filetype plugin indent on 

" --- Sane tab options
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" --- Sane cursor control ---
nmap <silent> j gj
nmap <silent> k gk
vmap <silent> j gj
vmap <silent> k gk

" --- Force syntax highlighting for glsl and arduino ---
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

" --- Pretty colour scheme ---
set background=dark
colorscheme solarized

" --- Don't know about this leader key just yet... ---
let mapleader = ","

" --- Improve search ---
set showmatch
set number
set ignorecase
set smartcase
set incsearch
set hlsearch

" --- Clear search highlighting with ,<SPACE>
noremap <leader><space> :noh<cr>

noremap <leader>t :NERDTree



" --- Make mouse work ---
set mouse=a

" --- Add undo files so undo works after vim has been closed ---
set undofile


" --- OmniCppComplete options ---
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set completeopt=menu,menuone
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype (i.e. parameters) in popup window
" -- ctags --
" map <ctrl>+T to generate ctags for current folder:
map <C-t> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
" add current directory's generated tags file to available tags
set tags+=./tags
set tags+=$HOME/.vim/tags/libwcl.tags
set tags+=$HOME/.vim/tags/sar.tags


" --- Vim Latex specific stuff
let g:tex_flavor='latex'
set grepprg=grep\ -nH\ $*
let g:Tex_Folding=0
" autocmd filetype tex set textwidth=80
autocmd filetype tex setlocal spell spelllang=en_au 
set spelllang=en_au


set iskeyword+=:
set linebreak
set formatoptions+=l

" Fix retarded vim backspace
set backspace=indent,eol,start

" I have a widescreen monitor, do I need this?
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
