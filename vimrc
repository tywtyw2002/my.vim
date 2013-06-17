"include bundles
source ~/.vim/bundles.vim

syntax on
set history=700
set tabstop=4
set shiftwidth=4
set expandtab
set fencs=utf-8,gbk
set fileencoding=utf-8
set number
set autoindent
set smartindent
set vb t_vb=
set fileencodings=utf-8,gb18030,utf-16,big5
set backspace=2
set foldmethod=syntax
set foldlevel=99
set hlsearch
set showmatch
set foldmethod=indent
set laststatus=2
set nocompatible




"file type and indent
autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79


" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"


" ZenCoding
let g:user_zen_expandabbr_key='<C-j>' 




""""""""""""""""""""
" customize config "
""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

set ruler

"set cmdheight=2

set hid



" save fold
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

"colorscheme autumn
colorscheme twilight256 
set t_Co=256


if has("gui_running")
"    set gfn=Monospace\ 10
    set guifont=Inconsolata\ 11
    set gfw=WenQuanYi\ Micro\ Hei:h11
    set go=aAce              " 去掉难看的工具栏和滑动条
    set showtabline=2
    colorscheme twilight
endif


" Set font according to system
if has("mac") || has("macunix")
    set gfn=Menlo:h12
    set shell=/bin/zsh
elseif has("win16") || has("win32")
    set gfn=Bitstream\ Vera\ Sans\ Mono:h10
    colorscheme twilight
elseif has("linux")
    colorscheme twilight
    "set gfn=Monospace\ 10
    set shell=/bin/zsh
endif


filetype on
filetype plugin on
filetype indent on
filetype plugin indent on


nnoremap <buffer> <F5> :w<CR>:!/usr/bin/env python3 % <CR>
nnoremap <buffer> <F7> :w<CR>:!aspell -c %<CR>
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F3> :set noautoindent!<CR>:set nosmartindent!<CR>
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType python set complete+=k~/.vim/syntax/python.vim "isk+=.,(
autocmd BufNewFile *.py 0r ~/.vim/template/simple.py
"autocmd BufNewFile *.s 0r ~/.vim/template/simple.s
autocmd BufRead *.mako set filetype=mako
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

au BufRead,BufNewFile *.coffee set filetype=coffee

map <C-t> :NERDTree<cr>
map <C-z> :Pydoc 
map <C-x> za
imap <C-f> <Right>
imap <C-e> <C-o>$
" Tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0 
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }

  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif

" Nerd Tree 
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"

" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" tabbar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1
hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'


" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle
"nerd commit
let mapleader=","
map <c-h> ,c<space>

" NeoComplCache
set completeopt-=preview
let g:neocomplcache_enable_at_startup=1
"let g:neoComplcache_disableautocomplete=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)


" SuperTab
let g:SuperTabDefaultCompletionType="<c-n>"
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

"UltiSnips
"let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-k>"

