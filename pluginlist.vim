set nocompatible               " be iMproved
filetype off                   " required!
"filetype plugin indent on


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" " required!
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
Bundle 'Valloric/YouCompleteMe'
"Bundle 'Shougo/neocomplcache'
Bundle 'honza/vim-snippets'
"Bundle 'Shougo/neosnippet'
"Bundle 'Shougo/neosnippet-snippets'
"Bundle 'supermomonga/neocomplete-rsense.vim'
"Bundle 'ervandew/supertab'
"Bundle 'scrooloose/snipmate-snippets'
Bundle 'SirVer/ultisnips'
"Bundle 'mattn/zencoding-vim'
Bundle 'Raimondi/delimitMate'
Bundle 'junegunn/vim-easy-align'
Bundle 'tpope/vim-dispatch'
"=========================
" snipmate dependencies
"=========================
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
Bundle 'vim-scripts/matchit.zip'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'airblade/vim-gitgutter'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'scrooloose/nerdtree'
Bundle 'kshenoy/vim-signature'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
"Bundle 'sjl/gundo.vim'
"Bundle 'Raimondi/delimitMate'
Bundle 'kana/vim-smartinput'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle "bronson/vim-trailing-whitespace"



"--------------
" IDE features
"--------------
"Bundle 'bling/vim-airline'
Bundle 'majutsushi/tagbar'
Bundle 'humiaozuzu/TabBar'
"Bundle 'mileszs/ack.vim'
Bundle 'rking/ag.vim'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-powerline'
"Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
"Bundle 'scrooloose/syntastic'
Bundle 'w0rp/ale'
Bundle 'tpope/vim-repeat'
Bundle 'jmcantrell/vim-virtualenv'
"Bundle 'Shougo/unite.vim'
"Bundle 'Shougo/unite-outline'
"Bundle 'fholgado/minibufexpl.vim'
Bundle 'ryanoasis/vim-devicons'
Bundle 'rhysd/vim-clang-format'

"-------------
" Other Utils
" ------------
Bundle 'jceb/vim-orgmode'
Bundle 'Rykka/riv.vim'
"Bundle 'humiaozuzu/fcitx-status'
"Bundle 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
" web backend
Bundle "justinmk/vim-syntax-extra"
Bundle 'chase/vim-ansible-yaml'
Bundle '2072/PHP-Indenting-for-VIm'
"Bundle 'tpope/vim-rails'
"Bundle 'beyondwords/vim-jinja2'
Bundle 'Glench/Vim-Jinja2-Syntax'
"Bundle 'digitaltoad/vim-jade'
Bundle 'vim-scripts/Conque-Shell'
Bundle 'rodjek/vim-puppet'
Bundle 'sudar/vim-arduino-syntax'
Bundle 'saltstack/salt-vim'
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
Bundle 'vim-ruby/vim-ruby'
"--------------
" Scheme
"--------------
"Bundle 'kien/rainbow_parentheses.vim'
"Bundle 'wlangstroth/vim-racket'

"--------------
" Color Scheme
"--------------
"Bundle 'rickharris/vim-blackboard'
"Bundle 'altercation/vim-colors-solarized'
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
