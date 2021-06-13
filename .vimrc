let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_improved_strings = 0

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = "$HOME/.ycm_extra_conf.py"

let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#bufferline#overwrite_variables = 1

" Automatic installation of vim-plug
let vimplug_root = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
let vimplug_loc = vimplug_root . '/autoload/plug.vim'

if empty(glob(vimplug_loc))
	silent execute '!curl -fLo ' . vimplug_loc . ' --create-dirs '
		\ 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

unlet vimplug_root
unlet vimplug_loc

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'bling/vim-bufferline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-dispatch'
Plug 'preservim/nerdtree'

call plug#end()

syntax on
scriptencoding utf-8

try
colorscheme gruvbox
catch
endtry

set nocompatible
set exrc
set secure
set number
set noshowmode
set cursorline
set list

set t_ut=''
set t_Co=256
set background=dark
set mouse=a
set encoding=utf-8
set laststatus=2
set colorcolumn=81
set listchars=tab:▸·,trail:~,extends:→,precedes:←,space:␣

nnoremap <F5> :Make clean<CR>
nnoremap <F6> :Make debug<CR>
nnoremap <F7> :Make<CR>
nnoremap <F8> :NERDTreeToggle<CR>

autocmd BufWritePost,BufRead,BufNewFile *.c,*.h set filetype=c
autocmd BufWritePost,BufRead,BufNewFile *.c,*.h setlocal tabstop=8
autocmd BufWritePost,BufRead,BufNewFile *.c,*.h setlocal shiftwidth=8
autocmd BufWritePost,BufRead,BufNewFile *.c,*.h setlocal noexpandtab
autocmd BufWritePost,BufRead,BufNewFile *.c,*.h setlocal autoindent
autocmd BufWritePost,BufRead,BufNewFile *.c,*.h setlocal cindent
autocmd BufWritePost,BufRead,BufNewFile *.c,*.h setlocal cino=(0:0
