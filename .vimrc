""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" NOTE: Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" MY PLUGINS
Plugin 'git://github.com/tpope/vim-fugitive.git'                 " git wrapper
Plugin 'git://github.com/tpope/vim-repeat.git'                   " allows repeating plugin maps using '.'
Plugin 'git://github.com/tpope/vim-speeddating.git'              " allows incrementing dates/times using <C-a> and <C-x>
Plugin 'git://github.com/sjl/gundo.vim.git'                      " allows visualizing undo history
Plugin 'godlygeek/tabular'                                       " makes it easy to line up text
Plugin 'git://github.com/plasticboy/vim-markdown.git'            " syntax, rules, and mappings for markdown
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'} " powerline at bottom of screen
Plugin 'git://github.com/Valloric/YouCompleteMe.git'             " auto complete
Plugin 'git://github.com/scrooloose/syntastic.git'               " syntax checker
Plugin 'git://github.com/altercation/vim-colors-solarized.git'   " solarized color theme
Plugin 'git://github.com/tpope/vim-commentary.git'               " easy commenting/uncommenting lines
" Plugin 'git://github.com/kana/vim-textobj-entire.git'            " allows selecting entire file with an operator
Plugin 'scrooloose/nerdtree'                                     " easy exploring filesystem
Plugin 'pangloss/vim-javascript'                                 " syntax and indent plugins for javascript
Plugin 'mxw/vim-jsx'                                             " syntax/indentation for jsx
" Plugin 'scrooloose/nerdcommenter'                                " easy commenting/uncommenting lines
Plugin 'tpope/vim-surround'                                      " allows easy editing of surrounding parentheses, brackets, quotes, XML tags, etc.

" COMMANDS HELP
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" vim +PluginInstall +qall     - installs plugins from command line

" All Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number " display line numbers
set history=200 " set default history storage
"set mouse=a " enable mouse usage
set showmatch " show matching brackets/parentheses
set showcmd " shows the command being used in the bottom left
set ruler " always show the current position
set backspace=2 " make backspace work
set lazyredraw " redraw only when we need to
set wildmenu " visual autocomplete for command menu
set tags=tags;/
set scrolloff=4 " scroll the screen 4 above/below the cursor
set wildmode=longest:list " Use bash like tab completion
" set cursorline " highlight current line

let g:jsx_ext_required = 0 " allow jsx syntax highlighting on js files too (requires plugin)

" Return to last edit position when opening files (You want this!)
" autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" Start syntax highlighting at the beginning of the file, theoretically slower
autocmd BufEnter * :syntax sync fromstart 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch " show suggestions as you type out a search
set ignorecase " case insensitive search
set smartcase " case sensitive search if+f your search contains capital letters
set hlsearch " highlight search results

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on " enable syntax highlighting
filetype plugin on " enable filetype-specific plugins
filetype indent on " enable filetype-specific indentation
set expandtab " tabs become spaces
set smarttab " be smart when using tabs

set autoindent " copy indentation from line above
set smartindent " smart indent
set wrap " wrap lines

" default indentation: 1 tab === 4 spaces
set shiftwidth=4 " number of spaces to shift a line when using >> or <<
set tabstop=4 " number of spaces in a tab when editing
set softtabstop=4 " tabs become 4 spaces

" NOTE: file-specific indentation below

" line break on 80 characters
"set lbr
"set tw=80

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Appearance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NOTE: syntax enabled above

" Solarized
set background=dark
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
"set t_Co=256
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
colorscheme solarized

" slate colorscheme
"set background=dark
"colorscheme slate

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => File Type Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set file types for some files
autocmd BufNewFile,BufRead *.php set ft=php
autocmd BufNewFile,BufRead *.json set syntax=java

" Python Settings
au FileType py set textwidth=79 ''PEP-8 Specification 

" JS settings
au FileType javascript set shiftwidth=2
au FileType javascript set tabstop=2
au FileType javascript set softtabstop=2

" HTML settings
au FileType html set shiftwidth=2
au FileType html set tabstop=2
au FileType html set softtabstop=2

" CSS/SCSS settings
au FileType css set shiftwidth=2
au FileType css set tabstop=2
au FileType css set softtabstop=2
au FileType scss set shiftwidth=2
au FileType scss set tabstop=2
au FileType scss set softtabstop=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quit even if you accidentally type Q instead of q
cmap Q q

" hit escape twice to save file
map <Esc><Esc> :w<CR>

" \h to turn on search highlights
:nmap \h :set hlsearch<CR> 

" \q to turn off search highlights
:nmap \q :nohlsearch<CR> 

" s to toggle line numbers
:nmap \s :set invnumber<CR> 

" \p to turn on paste mode when pasting multiple lines
:nmap \p :set paste!<CR> 

" \n to toggle nerd tree
let NERDTreeShowBookmarks=1
:nmap \n :NERDTreeToggle<CR>

" \c to toggle comments (requires commentary plugin)
map \c gc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Powerline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Powerline fonts
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" configure the status line at the bottom of the screen
set laststatus=2
set statusline=%t\ %y\ format:\ %{&ff};\ [%c,%l]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Cursor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change cursor shape between insert and normal mode in iTerm2
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
