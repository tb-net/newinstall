"-- copy/paste settings
set clipboard=unnamedplus

"-- window settings
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"-- enable syntax highlighting
syntax enable

"-- show line numbers
set number

"-- PEP8 indentation
au BufNewFile,Bufread *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

"-- text encoding
set encoding=utf-8

"-- show a visual line under the cursor's current line
set cursorline

"-- show the matching part of the pair for [] {} and ()
set showmatch

"-- enable all Python syntax highlighting features
let python_highlight_all=1

"-- disable default keys to learn hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"-- split window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"-- plugin section
call plug#begin('~/.vim/plugged')

Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'

call plug#end()


"-- colors
if (has("termguicolors"))
  set termguicolors
endif
"set t_co=256
set background=dark
colorscheme palenight
"colorscheme ayu
"let ayucolor='dark'




