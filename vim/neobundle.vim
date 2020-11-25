"*****************************************************************************
"" NeoBundle core
"*****************************************************************************

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

let neobundle_readme=expand('~/.vim/bundle/neobundle.vim/README.md')

let g:vim_bootstrap_langs = "javascript,ruby,php,html"
let g:vim_bootstrap_editor = "vim"				" nvim or vim

if !filereadable(neobundle_readme)
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"

  " Run shell script if exist on custom select language
  
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

"*****************************************************************************
"" NeoBundle install packages
"*****************************************************************************
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
" NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'bling/vim-airline'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'vim-scripts/grep.vim'
NeoBundle 'vim-scripts/CSApprox'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

"" Vim-Session
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-session'

if v:version >= 703
  NeoBundle 'Shougo/vimshell.vim'
endif

if v:version >= 704
  "" Snippets
  NeoBundle 'SirVer/ultisnips'
  NeoBundle 'FelikZ/ctrlp-py-matcher'
endif

NeoBundle 'honza/vim-snippets'

"" Color
"" NeoBundle 'tomasr/molokai'
NeoBundle 'crusoexia/vim-monokai'
NeoBundle 'zenorocha/dracula-theme'

"" Vim-Bootstrap Updater
" NeoBundle 'sherzberg/vim-bootstrap-updater'

"" Custom bundles

"" Javascript Bundle
NeoBundle "scrooloose/syntastic"


"" Ruby Bundle
NeoBundle "tpope/vim-rails"
NeoBundle "tpope/vim-rake"
NeoBundle "tpope/vim-projectionist"
NeoBundle "thoughtbot/vim-rspec"
NeoBundle "majutsushi/tagbar"
NeoBundle "ecomba/vim-ruby-refactoring"


"" HTML Bundle
"NeoBundle 'amirh/HTML-AutoCloseTag'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'gorodinskiy/vim-coloresque'
NeoBundle 'tpope/vim-haml'
NeoBundle 'mattn/emmet-vim'


"" PHP Bundle
NeoBundle 'arnaud-lb/vim-php-namespace'



"" Include user's extra bundle
if filereadable(expand("~/.vimrc.local.bundles"))
  source ~/.vimrc.local.bundles
endif

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

