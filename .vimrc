" //// plugins ////
"
" inspired by @noopkat - /noopkat
"
" + ctrlp
" + vim-airline
" + vim-airline-theme
" + vim-vue
" + vim-jsx-improve
" + dracula colour theme
" + nerdtree
" + pathogen

set belloff=all

call pathogen#infect()
call pathogen#helptags()

set runtimepath^=~/.vim/bundle/vim-airline/plugin/airline.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim-surround/plugin/surround.vim
" //// turbopasi settings ////

syntax on
color dracula
set smartindent
set clipboard=unnamed
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set number
set cursorline
set showmatch
set incsearch
set hlsearch
let g:ctrlp_working_path_mode = 'r'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/* 
let g:ctrlp_show_hidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set noswapfile
autocmd FileType javascript JsPreTmpl html
let g:jsx_ext_required = 0

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" airline
let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline_left_sep = ' <3 '
let g:airline_right_sep = ' + '
let g:airline_section_warning = ''
let g:airline_section_y = ''
let g:airline_section_x = ''
set laststatus=2

" //// mappings ////

" ctrl-p plugin 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" move between buffers
map <C-Left> <Esc>:bprev<CR>
map <C-Right> <Esc>:bnext<CR> 

" nerd tree toggle
map <C-b> :NERDTreeToggle<CR>

" move lines up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" switch to left / right split 
map <C-h> <C-W>h
map <C-l> <C-W>l

set noruler
set noshowmode
set hidden
