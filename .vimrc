set nocompatible
filetype off

if has('win32') || has('win64')
    set rtp+=~/vimfiles/bundle/Vundle.vim
    call vundle#begin('~/vimfiles/bundle')
else
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/a.vim'
Plugin 'rking/ag.vim'
Plugin 'gnattishness/cscope_maps'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
"Plugin 'Valloric/YouCompleteMe'

" All plugins must be listed here
call vundle#end()
filetype plugin indent on
filetype plugin on


" Trigger configuration. 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"



" Colors
syntax enable           " enable syntax processing
set background=dark
let g:gruvbox_bold=0
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox

" Misc
set ttyfast             " faster redraw
set backspace=indent,eol,start

" Spaces & Tabs
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
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

" YCM
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_config='~/.ycm_extra_conf.py'

" NERDTree
let g:NERDTreeWinSize=40
let g:NERDTreeShowHidden=1

" Custom Environment
"autocmd VimEnter * TagbarToggle
autocmd VimEnter * NERDTree

autocmd VimEnter * wincmd p

autocmd WinEnter * call NERDTreeQuit()


" Functions

function NERDTreeQuit()
    if exists("t:NERDTreeBufName")
        if bufwinnr(t:NERDTreeBufName) != -1
            if winnr("$") == 1
                q
            endif
        endif
    endif
endfunction


