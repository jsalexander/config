" Misc
set ttyfast             " faster redraw
set backspace=indent,eol,start

" Spaces & Tabs
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=0
set nomodeline
filetype indent on
filetype plugin on
set autoindent

" UI Layout
set number              " show line numbers
set showcmd             " show command in bottom bar
"set nocursorline        " highlight current line
set wildmenu
"set lazyredraw
set showmatch           " higlight matching parenthesis
set nowrap
if has("gui_running")
    set lines=80 columns=180
endif

set mouse=n

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

augroup cursorui
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" MacVim
set guioptions-=r
set guioptions-=L

" Searching
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches

" Ctags Optimizations
set autochdir
set tags=./tags;/

" Custom Keymaps
nmap <F6> :exe 'tag ' .expand('<cword>')<CR>
nmap <F7> :exe 'tn'<CR>
nmap <F8> :exe 'tp'<CR>
nmap <F9> :exe 'pop'<CR>
nmap <F11> :NERDTreeToggle<CR>
nmap <F12> :TagbarToggle<CR>

" Backups
if has('win32') || has('win64')
    set backup
    set backupdir=C:\tmp
    set backupskip=C:\tmp\*
    set directory=C:\tmp
    set writebackup
else
    set backup
    set backupdir=/tmp
    set backupskip=/tmp/*,/private/tmp/*
    set directory=/tmp
    set writebackup
endif

" File Bindings
augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c
augroup END
