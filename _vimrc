"coding=?

:set nocompatible
syntax enable 
 "处理文本中显示乱码
       set encoding=utf-8
       set fileencodings=utf-8,chinese,latin-1
       if has("win32")
       set fileencoding=chinese
       else
       set fileencoding=utf-8
       endif
     
       "处理菜单及右键菜单乱码
       source $VIMRUNTIME/delmenu.vim
       source $VIMRUNTIME/menu.vim
     
       "处理consle输出乱码
       language messages zh_CN.utf-8
"Show Line Number
:set number
"set init size
set lines=35 columns=80
"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T

"Color=?
colorscheme mac_classic 
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
imap jk <Esc>
":map <MouseDown> <C-Y>
":map <S-MouseDown> <C-U>
":map <MouseUp> <C-E>
":map <S-MouseUp> <C-D>
"code auto finish 
filetype plugin indent on
set completeopt=longest,menu
"自动补全命令时候使用菜单式匹配列表 
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

"tab switch shortcut key settings
:nn <M-1> 1gt
:nn <M-2> 2gt
:nn <M-3> 3gt
:nn <M-4> 4gt
:nn <M-5> 5gt
:nn <M-6> 6gt
:nn <M-7> 7gt
:nn <M-8> 8gt
:nn <M-9> 9gt
:nn <M-0> :tablast<CR>

