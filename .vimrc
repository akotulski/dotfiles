" VERY INCOMPLETE, SNAPSHOT OF SOME CONFIG OPTIONS

set wildmenu

set shiftwidth=2
set expandtab

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
" for git
Bundle 'tpope/vim-fugitive'
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'Lokaltog/vim-distinguished'
"Bundle 'nanotech/jellybeans.vim'
"Bundle 'tpope/vim-vividchalk'
Bundle 'flazz/vim-colorschemes'
Bundle 'vim-scripts/a.vim'

"Bundle 'Valloric/YouCompleteMe'

syntax enable

set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme distinguished 
colorscheme jellybeans 
"colorscheme vividchalk 
"colorscheme lucius 

" not sure if still works
:vmap gb :<C-U>Gblame <CR>,<C-R>=line("'>") <CR><CR>
:nmap gb :Gblame<CR>

"kill quickfix
map <Leader>q :ccl<CR>
"previous buffer
map <Leader>, <C-^>
" lazy :
nnoremap ; :
" Yank from the cursor to the end of the line, to be consistent
" with C and D.
nnoremap Y y$


