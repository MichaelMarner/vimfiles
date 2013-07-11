execute pathogen#infect()
set nocompatible
syntax on
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set number
set mouse=a
" hi Comment ctermfg=lightblue
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl

au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

filetype on
filetype indent on

" --- OmniCppComplete ---
" -- required --
set nocp " non vi compatible mode
filetype plugin on " enable plugins


" -- optional --
" auto close options when exiting insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set completeopt=menu,menuone

" -- configs --
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype (i.e. parameters) in popup window
" -- ctags --
" map <ctrl>+F12 to generate ctags for current folder:
map <C-t> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
" add current directory's generated tags file to available tags
set tags+=./tags
set tags+=$HOME/.vim/tags/libwcl.tags
set tags+=$HOME/.vim/tags/sar.tags

let g:tex_flavor='latex'
set grepprg=grep\ -nH\ $*
let g:Tex_Folding=0


set iskeyword+=:

" autocmd filetype tex set textwidth=80
autocmd filetype tex setlocal spell spelllang=en_au 

nmap <silent> j gj
nmap <silent> k gk
vmap <silent> j gj
vmap <silent> k gk

set linebreak
set formatoptions+=l

" Fix retarded vim backspace
set backspace=indent,eol,start

set spelllang=en_us

set background=dark
colorscheme solarized
