" Setup Vundle path
if has('win32') || has('win64')
    set rtp+=~/vimfiles/bundle/Vundle.vim
    call vundle#begin('~/vimfiles/bundle')
else
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/c.vim'
Plugin 'vim-scripts/ccvext.vim'
Plugin 'vim-scripts/autoload_cscope.vim'
Plugin 'vim-scripts/vim-javascript'
Plugin 'vim-scripts/JSON.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'junegunn/fzf'
Plugin 'mileszs/ack.vim'
Plugin 'godlygeek/tabular'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'rking/ag.vim'
Plugin 'gnattishness/cscope_maps'
Plugin 'honza/vim-snippets'
"Plugin 'Valloric/YouCompleteMe'

" All plugins must be listed here
call vundle#end()
filetype plugin indent on
filetype plugin on


" UltiSnips configuration
" Trigger configuration.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" a.vim configuration
"let g:alternateSearchPath = '../inc,./inc,../source,sfr,../src,../include,..'
let g:alternateExtensions_C = "h,inc,H,HPP,hpp"
let g:alternateExtensions_h = "C,cpp,c++,CPP,m,mm"

" YouCompleteMe
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
