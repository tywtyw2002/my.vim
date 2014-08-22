set nocompatible               " be iMproved
filetype off                   " required!
filetype plugin indent on


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" " required! 
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
Bundle 'Shougo/neocomplcache'
Bundle 'honza/vim-snippets'
Bundle 'Shougo/neosnippet'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/snipmate-snippets'
"Bundle 'SirVer/ultisnips'
"Bundle 'mattn/zencoding-vim'
Bundle 'Raimondi/delimitMate'

"=========================
" snipmate dependencies
"=========================
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
"Bundle 'tsaleh/vim-matchit'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'airblade/vim-gitgutter'
"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
"Bundle 'Raimondi/delimitMate'
Bundle 'kana/vim-smartinput'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'



"--------------
" IDE features
"--------------
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'humiaozuzu/TabBar'
"Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
"Bundle 'fholgado/minibufexpl.vim'
"-------------
" Other Utils
" ------------
"Bundle 'humiaozuzu/fcitx-status'
"Bundle 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
" web backend
Bundle '2072/PHP-Indenting-for-VIm'
"Bundle 'tpope/vim-rails'
"Bundle 'beyondwords/vim-jinja2'
Bundle 'Glench/Vim-Jinja2-Syntax'
"Bundle 'digitaltoad/vim-jade'
Bundle 'vim-scripts/Conque-Shell'

"------------------------
" web front end
"--------------
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-haml'
Bundle 'nono/jquery.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
"Bundle 'groenewege/vim-less'
"Bundle 'wavded/vim-stylus'

"--------------
" markup language
"--------------
Bundle 'tpope/vim-markdown'

"--------------
" Ruby
"--------------
"Bundle 'tpope/vim-endwise'

"--------------
" Scheme
"--------------
"Bundle 'kien/rainbow_parentheses.vim'
"Bundle 'wlangstroth/vim-racket'

"--------------
" Color Scheme
"--------------
"Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
"Bundle 'rickharris/vim-monokai'
"Bundle 'tpope/vim-vividchalk'
"Bundle 'Lokaltog/vim-distinguished'
Bundle 'chriskempson/vim-tomorrow-theme'
"Bundle 'matthewtodd/vim-twilight'
Bundle 'tomasr/molokai'
Bundle 'vim-scripts/twilight'
Bundle 'vim-scripts/twilight256.vim'
Bundle 'w0ng/vim-hybrid'
"Bundle 'dsolstad/vim-wombat256i'
"Bundle 'vim-scripts/Wombat'
filetype plugin indent on     " required!