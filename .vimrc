" 

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" ABOUT Self:
Plugin 'gmarik/Vundle.vim'

Plugin 'w0ng/vim-hybrid'
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

Plugin 'jiangmiao/auto-pairs'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'

" Plugin 'jceb/vim-orgmode'


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


" default
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set splitbelow
set splitright
nnoremap <S-Left> :tabprevious<CR>
nnoremap <S-Right> :tabnext<CR>
nnoremap <C-T> :tabedit 
nnoremap <C-T><C-T> :tabedit<CR>
" nnoremap <C-W> :tabclose<CR>

" autocmd FileType javascript
"   \ :setl omnifunc=jscomplete#CompleteJS
" let g:jscomplete_use = ['dom', 'moz']
" let g:nodejs_complete_config = {
" \  'js_compl_fn': 'jscomplete#CompleteJS',
" \  'max_node_compl_len': 15
" \}
set list lcs=tab:\|\
" let g:indentLine_color_term = 239
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py exec ":call SetTitle()" 
" autocmd BufNewFile *.py exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
	"如果文件类型为.sh文件 
	if &filetype == 'sh' 
		call setline(1,"\#!/bin/bash") 
		call append(line("."), "") 
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
	    call append(line(".")+1, "") 

    elseif &filetype == 'ruby'
        call setline(1,"#!/usr/bin/env ruby")
        call append(line("."),"# encoding: utf-8")
	    call append(line(".")+1, "")

"    elseif &filetype == 'mkd'
"        call setline(1,"<head><meta charset=\"UTF-8\"></head>")
	else 
		call setline(1, "/*************************************************************************") 
		call append(line("."), "	> File Name: ".expand("%")) 
		call append(line(".")+1, "	> Author: ") 
		call append(line(".")+2, "	> Mail: ") 
		call append(line(".")+3, "	> Created Time: ".strftime("%c")) 
		call append(line(".")+4, " ************************************************************************/") 
		call append(line(".")+5, "")
	endif
	if expand("%:e") == 'cpp'
		call append(line(".")+6, "#include<iostream>")
		call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "")
	endif
	if &filetype == 'c'
		call append(line(".")+6, "#include<stdio.h>")
		call append(line(".")+7, "")
	endif
	if expand("%:e") == 'h'
		call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
		call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
		call append(line(".")+8, "#endif")
	endif
	if &filetype == 'java'
		call append(line(".")+6,"public class ".expand("%:r"))
		call append(line(".")+7,"")
	endif
	"新建文件后，自动定位到文件末尾
endfunc 
autocmd BufNewFile * normal G
" let g:user_emmet_leader_key='<C-y>'

