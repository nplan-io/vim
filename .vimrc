set history=700
filetype plugin on
filetype plugin indent on
filetype indent on

set nocompatible
set autoread
set ruler
set ignorecase
set hlsearch
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell

syntax on

set t_Co=256
set t_ut=

let mapleader = ','
let maplocalleader = ',,'
autocmd! bufwritepost vimrc source ~/.vimrc

set smartindent
set tabstop=2
set expandtab
set shiftwidth=2
set textwidth=80
set colorcolumn=81
map <S-Left> :tabprevious<cr>
map <S-Right> :tabnext<cr>
map <C-h> :tabprevious<cr>
map <C-l> :tabnext<cr>
map <C-p> :tabprevious<cr>
map <C-n> :tabnext<cr>
map <C-t> :tabnew<cr>
map <leader>f :tabfind .<cr>
map <leader>te :tabedit
map <leader>tm :tabmove

map <leader>e :sp ~/.vimrc<cr>

fun! BuildCommitPush (arg)
    <leader>bp<cr>
    :! git commit expand("%:t") -m arg <cr>
    :! git pull<cr>
    :! git push<cr>
endfunction

map <leader>vimrc :tabe ~/.vimrc<cr>
nmap <localleader>c BuildCommitPush
colorscheme murphy
iabbrev pf @printf[I32](“\n”.cstring())<Esc>13<Left>i

autocmd BufWritePre *.py :%s/\s\+$//e

set nocp
call pathogen#infect()
call pathogen#helptags()

set laststatus=2
let g:pymode = 1
let g:pymode_python = 'python3'
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_on_fly = 0
let g:pymode_lint_message = 1
let g:pymode_lint_checkers = ['pylint', 'pep8']
let g:pymode_rope = 1
let g:pymode_rope_goto_definition_bind = '<leader>pg'
let g:pymode_rope_goto_definition_cmd = 'new'
let g:pymode_rope_rename_bind = '<leader>pr'
let g:pymode_rope_module_to_package_bind = '<leader>p1p'
let g:pymode_rope_extract_method_bind = '<leader>pm'
let g:pymode_rope_extract_variable_bind = '<leader>pl'
let g:pymode_rope_use_function_bind = '<leader>pu'
let g:pymode_rope_move_bind = '<leader>pv'
let g:pymode_rope_change_signature_bind = '<leader>ps'
