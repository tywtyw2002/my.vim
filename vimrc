"include bundles
source ~/.vim/pluginlist.vim

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
"set hlsearch
set incsearch
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

" ident guide
if has("gui_running")
let g:indent_guides_auto_colors = 1
else
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgray 
endif

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
"colorscheme twilight256 
colorscheme hybrid
"colorscheme twilight
set t_Co=256


if has("gui_running")
"    set gfn=Monospace\ 10
    set go=aAce              " 去掉难看的工具栏和滑动条
    set showtabline=2
"    colorscheme twilight
    colorscheme hybrid
endif

"let g:Powerline_symbols = 'fancy'
" Set font according to system
if has("mac") || has("macunix")
    set gfn=monaco\ for\ powerline:h12
    let g:Powerline_symbols = 'fancy'
    set shell=/bin/zsh
elseif has("win16") || has("win32")
    set gfn=Bitstream\ Vera\ Sans\ Mono:h10
    colorscheme twilight
elseif has("linux")
    colorscheme twilight
    set guifont=Inconsolata\ 11
    set gfw=WenQuanYi\ Micro\ Hei:h11
    "set gfn=Monospace\ 10
    set shell=/bin/zsh
endif


filetype on
filetype plugin on
filetype indent on
filetype plugin indent on


" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

nnoremap <silent> ;i :set paste!<CR>
nnoremap <buffer> <F5> :w<CR>:!/usr/bin/env python % <CR>
"nnoremap <buffer> <F7> :w<CR>:!aspell -c %<CR>
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


let mapleader=','
let maplocalleader='\'

map <C-z> :Pydoc 
"map <C-x> za
imap <C-f> <Right>
imap <C-e> <C-o>$


" Tagbar
set tags=./tags,.tags,tags;
"nmap <C-f> :TagbarToggle<cr>
nnoremap <silent> ;t :TagbarToggle<CR>
let g:tagbar_left=0
let g:tagbar_right=1
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
"map <C-t> :NERDTree<cr>
nnoremap <silent> ;d :NERDTreeTabsToggle<CR>
nnoremap <silent> ;f :NERDTreeFind<CR>
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"

"nerdtree-tabs
let g:nerdtree_tabs_open_on_gui_startup = 0



" ctrlp
nnoremap <silent> ;p :CtrlP<CR>
nnoremap <silent> ;b :CtrlPBuffer<CR>
nnoremap <silent> ;u :CtrlPUndo<CR>
nnoremap <silent> ;g :CtrlPTag<CR>
nnoremap <silent> ;c :CtrlPBufTag<CR>
nnoremap <silent> ;m :CtrlPMRU<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,.DS_Store  " MacOSX/Linux
"let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_extensions = ['tag', 'buffertag', 'undo']
if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command =
    \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
else
  " Fall back to using git ls-files if Ag is not available
  let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
endif



" tabbar
"humiaozuzu/TabBar
" only in console mode
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1
hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion"
"let g:EasyMotion_move_highlight = 1
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment
hi link EasyMotionTarget2First MatchParen
hi link EasyMotionTarget2Second MatchParen

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

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

"UltiSnips
"let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"" Matchit
"" Use Tab instead of % to switch
"nmap <Tab> %
"vmap <Tab> %

"" unite
"let g:unite_data_directory=$HOME . '/.vim/cache/unite'
"let g:unite_source_history_yank_enable=1
"let g:unite_source_rec_max_cache_files=100
"let g:unite_prompt='➤ '
"if executable('ag')
    "let g:unite_source_grep_command='ag'
    "let g:unite_source_grep_default_opts='--line-numbers --nocolor --nogroup --hidden'
    "let g:unite_source_grep_recursive_opt=''
"endif
"function! s:unite_settings() " Use ESC to exit, and use C-J and C-K to move
    "nmap <buffer> <ESC> <plug>(unite_exit)
    "imap <buffer> <ESC> <plug>(unite_exit)
    "imap <buffer> <C-J> <Plug>(unite_select_next_line)
    "imap <buffer> <C-K> <Plug>(unite_select_previous_line)
"endfunction
"autocmd filetype unite call s:unite_settings()

"nnoremap <Space> :Unite -keep-focus -no-quit<CR>
""https://github.com/farseer90718/dotvim/blob/master/config/plugins/unite.rc.vim
"nnoremap <silent> <Space>f :<C-U>Unite -start-insert -auto-resize -buffer-name=files file_rec/async<CR><C-U>
"nnoremap <silent> <Space>y :<C-U>Unite -start-insert -buffer-name=yanks history/yank<CR>
"nnoremap <silent> <Space>l :<C-U>Unite -start-insert -auto-resize -buffer-name=line line<CR>
"nnoremap <silent> <Space>o :<C-U>Unite -auto-resize -buffer-name=outline outline<CR>
"nnoremap <silent> <Space>b :<C-U>Unite -quick-match buffer<CR>
"nnoremap <silent> <Space>t :<C-U>Unite -quick-match tab<CR>
"nnoremap <silent> <Space>/ :<C-U>Unite -auto-resize -buffer-name=search grep:.<CR>



"fix macvim bug
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.md setf markdown
