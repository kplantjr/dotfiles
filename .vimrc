set nocompatible
set encoding=utf-8
scriptencoding utf-8

set laststatus=2
set noshowmode

set exrc
set secure

set number
set colorcolumn=81
syntax on

set listchars=tab:▸·,trail:~,extends:→,precedes:←,space:␣
set list

hi SpecialKey ctermfg=DarkBlue

set t_ut=''
" set t_Co=256
set background=dark

highlight Normal ctermbg=black ctermfg=white

let g:polyglot_disabled = ['autoindent']

let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_improved_strings = 0

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = "$HOME/.ycm_extra_conf.py"

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'

call plug#end()

set cinoptions+=:0
autocmd BufWritePost,BufRead,BufNewFile *.c,*.h set filetype=c
autocmd BufWritePost,BufRead,BufNewFile *.c,*.h setlocal noexpandtab
autocmd BufWritePost,BufRead,BufNewFile *.c,*.h setlocal autoindent
autocmd BufWritePost,BufRead,BufNewFile *.c,*.h setlocal cindent
autocmd BufWritePost,BufRead,BufNewFile *.c,*.h setlocal cino=(0:0

colorscheme gruvbox

