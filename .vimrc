" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Colors {{{
syntax enable 		" enable syntax processing
"set background=dark
" colorscheme solarized

" }}}

" Spaces & Tabs {{{
set tabstop=4 		" 4 space tab
set expandtab 		" use spaces for tabs
set softtabstop=4 	" 4 space tab
set shiftwidth=4 	" when using the >> or << commands, shift lines by 4 spaces
set modelines=1
filetype off             " try to detect filetypes
filetype indent on 	" load filetype-specific indent files
filetype plugin on 	" 
filetype plugin indent on  " enable loading indent file for filetype
set autoindent 		" indent when moving to the next line while writing code
" }}}

" UI Layout {{{
set number 		" show line numbers
set showcmd 		" show command in bottom bar
set nocursorline 	" highlight current line
set wildmenu 		" visual autocomplete for command menu
"set lazyredraw 	" redraw only when we need to
set showmatch 		" highlight matching [{()}]
" }}}

" Searching {{{
set ignorecase 		" Ignore case when searching
set incsearch           " Search as characters are entered
set hlsearch            " highlig all matches
set smartcase
" }}}

" Line Shortcuts {{{
" }}}

" Leader Shortcuts {{{
" }}}

" Folding {{{
set foldmethod=indent 		" fold based on indent level
set foldnestmax=10 		" max 10 depth
set foldenable 			" don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10 		" start with fold level of 1
" }}}

" Backups {{{
set backup
set backupdir=~/.vim/backup
" }}}

" Custom Functions {{{
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v', 100)
" }}}

" Map {{{
" closes {[()]} automatically
imap { {}<left>
imap ( ()<left>
imap [ []<left>
" }}}

" Powerline {{{
"set encoding=utf-8
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
set laststatus=2
" }}}

" Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}

" Launch Config {{{
runtime! debian.vim
set nocompatible
call pathogen#infect()
" }}}

" vim:foldmethod=marker:foldlevel=0
