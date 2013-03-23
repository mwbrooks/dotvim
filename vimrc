set nocompatible                  " Must come first because it changes other options.

set encoding=utf-8                " Allow UTF-8 symbols for listchars

" Load Pathogen
silent! call pathogen#runtime_append_all_bundles()

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.
set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.
set cursorline                    " Highlight cursor line

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.
set colorcolumn=80                " Set vertical line at 80 character width.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set autoread                      " Auto reload changed files

set tabstop=4                     " Global tab width.
set shiftwidth=4                  " And again, related.
set softtabstop=4                 " And again, related.
set expandtab                     " Use spaces instead of tabs

set list                          " Show invisible chars (tabs, spaces, eof, etc)
set listchars=tab:›\ ,eol:¬       " Change symbols for a few invisibles

set laststatus=2                  " Show the status line all the time

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" VIM's global wildcard ignore
set wildignore+=*.o,*.obj,.git,node_modules/**,build/**

" Enable 256 colors
set t_Co=256

set grepprg=ack

" Use dark background
set background=dark

let g:molokai_original=1          " dark grey background theme
colorscheme Monokai               " or molokai, vividchalk, solarized

" Clear search highlight
:nmap <Leader>q :nohlsearch<CR>

" Toggle paste mode
:nmap <Leader>o :set paste!<CR>

" Toggle line numbers
:nmap <Leader>l :setlocal number!<CR>

" j and k treat wrapping as separate rows
:nmap j gj
:nmap k gk

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$', 'build/', 'node_modules', 'npm-debug\.log']
map <Leader>n :NERDTreeToggle<CR>

" Command-T configuration
let g:CommandTMaxHeight=15          " Set the number of files shown
" let g:CommandTMatchWindowAtTop=1  " Show Command-T at the top
" let g:CommandTCancelMap='<esc>'

" Command-/ to toggle comments
map <D-/> <plug>NERDCommenterToggle<CR>

" Command-][ to increase/decrease indentation
" vmap <D-]> >gv
" vmap <D-[> <g

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Language Specific
autocmd FileType ruby,eruby,yaml,ru set tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
