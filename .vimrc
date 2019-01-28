" //// plugins ////
"
" inspired by @noopkat - /noopkat
"
" + ctrlp
" + vim-airline
" + dracula colour theme
" + nerdtree
" + pathogen

call pathogen#infect()
call pathogen#helptags()

set runtimepath^=~/.vim/bundle/vim-airline/plugin/airline.vim

" //// turbopasi settings ////

syntax on
color dracula
set smartindent
set clipboard=unnamed
set number
set showmatch
set noswapfile

" airline
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline_left_sep = '❤'
let g:airline_right_sep = '❤'
let g:airline_section_warning = ''
let g:airline_section_y = ''
let g:airline_section_x = ''
set laststatus=2 " for airline

set noruler
set noshowmode
set hidden
