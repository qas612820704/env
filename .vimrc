" 

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" ABOUT Self:
Plugin 'gmarik/Vundle.vim'

Plugin 'w0ng/vim-hybrid'
Plugin 'tomasr/molokai'

Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-surround'

Plugin 'majutsushi/tagbar'

Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'

Plugin 'suan/vim-instant-markdown'

Plugin 'Yggdroot/indentLine'

" ABOUT Snippet: 
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'jamescarr/snipmate-nodejs'


Plugin 'ervandew/supertab'

" python~~~~~~
Plugin 'gotcha/vimpdb'
" Node js
" Plugin 'moll/vim-node'
" Plugin 'mattn/jscomplete-vim'
" Plugin 'myhere/vim-nodejs-complete'

" Plugin 'jiangmiao/auto-pairs'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'

" Plugin 'jceb/vim-orgmode'
Plugin 'rip-rip/clang_complete'
Plugin 'rhysd/vim-clang-format'

Plugin 'jbgutierrez/vim-babel'
Plugin 'isruslan/vim-es6'
Plugin 'mxw/vim-jsx'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Color 
set t_Co=256
set background=dark
colorscheme hybrid
" color molokai
let g:rehash256 = 1
syntax on 

" jedi
let g:jedi#completions_command = "<C-/>"
let g:jedi#force_py_version = 3

" ultisnipt
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Nerd tree
map <F5> :NERDTreeToggle<CR>

" tagbar
nmap <F8> :TagbarToggle<CR>

" powerline
set laststatus=2 " means always show status bar
" 0: never
" 1: only if there are at least two windows (this one is the default)
" 2: always
let g:Powerline_symbols = 'fancy'

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


" default
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set hlsearch
set cursorline
set colorcolumn=80
highlight ColorColumn guibg=#202020

set expandtab
set splitbelow
set splitright
set number 

nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
nnoremap <C-T> :tabedit 
nnoremap <C-T><C-T> :tabedit<CR>
" nnoremap <C-W> :tabclose<CR>

" set list lcs=tab:\|\
" let g:indentLine_color_term = 239
" let g:user_emmet_leader_key='<tab>'

let g:user_emmet_expandabbr_key = '<tab><tab>'
" let g:user_emmet_expandabbr_key='<tab>'
let g:user_emmet_install_global = 0
autocmd FileType html,css,htmldjango EmmetInstall

let g:clang_library_path='/usr/lib64/libclang.so.3.9'
" let g:clang_format#auto_format_on_insert_leave = 1

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

let g:jsx_ext_required = 0

