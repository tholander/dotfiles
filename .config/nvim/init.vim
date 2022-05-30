" cannot code without the following "
"""""""""""""""""""""""""""""""""""""

set encoding=UTF-8
syntax on
set number

set cursorline

:let mapleader = "<"

" open terminal "
"""""""""""""""""
nnoremap <leader>t :below 10sp term://$SHELL<cr>i
" hit <Escape> key to exit from terminal mode
:tnoremap <Esc> <C-\><C-n>

source ~/.config/nvim/plugins.vim
