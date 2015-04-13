"coding=?

:set nocompatible
syntax enable 
 "�����ı�����ʾ����
       set encoding=utf-8
       set fileencodings=utf-8,chinese,latin-1
       if has("win32")
       set fileencoding=chinese
       else
       set fileencoding=utf-8
       endif
     
       "�����˵����Ҽ��˵�����
       source $VIMRUNTIME/delmenu.vim
       source $VIMRUNTIME/menu.vim
     
       "����consle�������
       language messages zh_CN.utf-8
"Show Line Number
:set number
"set init size
set lines=35 columns=160
"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T

"Color=?
colorscheme github
"Shutdown backup
set nobackup
"Font=?
set encoding=utf-8
set ambiwidth=double
set guifont=Consolas:h11:cANSI
set guifontwide=DotumChe:h11:cANSI

"del curdir which in session option
:set sessionoptions-=curdir
"add sesdir to session option
:set sessionoptions+=sesdir
" execute project related configuration in current directory
if filereadable("workspace.vim")
    source workspace.vim
endif
"TagList
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
"let Tlist_Auto_Open=1

"click F12 to run with python.exe
map <C-F12> :!python.exe %
imap jj <Esc>
"code auto finish 
filetype plugin indent on
set completeopt=longest,menu
"�Զ���ȫ����ʱ��ʹ�ò˵�ʽƥ���б� 
set wildmenu
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complet
"WinManager
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
"Pydiction
let g:pydiction_location = 'D:\Program Files\Vim\vim74\ftplugin\complete-dict'

"auto tabs
autocmd FileType python setlocal et sta sw=4 sts=4
