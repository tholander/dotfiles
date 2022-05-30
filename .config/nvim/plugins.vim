call plug#begin('~/.nvim/plugged')

" syntax highlighting
Plug 'sheerun/vim-polyglot'

" files hierarchy tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" toggle NERDTree with ctrl-e, where 'e' stands for 'explorer'
nmap <C-E> :NERDTreeToggle<CR>

" cool icons
Plug 'ryanoasis/vim-devicons'
let g:webdevicons_enable_nerdtree = 1

" EditorConfig support
Plug 'editorconfig/editorconfig-vim'

" git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" ============ COMPLETION ============
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" use <Tab> key to triggrer completion and navigate to the next complete item;
" can use also <Ctrl-N> to go to next element
"              <Shift-Tab> <Ctrl-P> to go to previous element
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~ '\s'
endfunction
inoremap <silent><expr> <Tab>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<Tab>" :
  \ coc#refresh()

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Use `d[` and `d]` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> d[ <Plug>(coc-diagnostic-prev)
nmap <silent> d] <Plug>(coc-diagnostic-next)

" Apply AutoFix to problem on the current line.
" Use `:CocFix` to get all choices avaliable.
nmap <leader>fix <Plug>(coc-fix-current)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Color Scheme
Plug 'baliestri/aura-theme', { 'rtp': 'packages/neovim' }

call plug#end()

colorscheme aura-soft-dark
