" Remove viminfo limits
set viminfo='100,h,n$XDG_CACHE_HOME/vim/viminfo

" Misc
set nocompatible
set nowrap                                  " I don't always wrap lines...
set linebreak                               " ...but when I do, I wrap whole words.
set t_Co=256                                " Support for xterm with 256 colors
set number                                  " Show line numbers
set relativenumber
set ruler                                   " Show ruler
set listchars=trail:.,tab:>-,eol:¬          " Change the invisible characters
set noswapfile                              " Don't create annoying *.swp files
set scrolloff=5                             " Start scrolling the file 5 lines before the end of the window
set showmatch                               " Highlight matching brackets on entry
set spelllang=en_au                         " Set default spelling language to English (Australia)
set hidden                                  " Allow hiding buffers with unsaved changes
set wildmenu                                " Make tab completion act more like bash
set wildmode=list:longest                   " Tab complete to longest common string, like bash
set showcmd                                 " Display an incomplete command in the lower right corner
set showmode                                " Show current mode down the bottom
set laststatus=2                            " Always show the status line
set history=1000
set autoread                                " Sensibly read changed files
set cursorline                              " Where am I?
set backspace=indent,eol,start              " Why would I ever want backspace to not work?
autocmd InsertEnter,InsertLeave * set cul!  " Toggle cursorline in insert mode.

" Searching
set hlsearch                                " Highlight searches
set incsearch                               " Highlight search results instantly
set ignorecase                              " Ignore case
set smartcase                               " Override 'ignorecase' option if the search contains upper case characters.

" Indentation
set shiftwidth=2                            " Number of spaces to use in each autoindent step
set tabstop=2                               " Two tab spaces
set softtabstop=2                           " Number of spaces to skip or insert when <BS>ing or <Tab>ing
set expandtab                               " Spaces instead of tabs for better cross-editor compatibility
set autoindent                              " Keep the indent when creating a new line
filetype indent on
set foldmethod=indent                       " Fold based on source indentation
set foldlevelstart=99                       " Expand all folds by default

let g:is_posix = 1                          " Better highlighting of shell files

" Power line stuff
let g:Powerline_symbols = 'fancy'

" Colorscheme
set t_Co=256
syntax enable
set background=dark
colorscheme monokai

" let g:solarized_hitrail=1                 " highlight trailing whitespace
" call togglebg#map("<F5>")                 " F5 toggles background dark/light
" colorscheme solarized
hi CursorLineNr ctermfg=7                   " highlght current line number
