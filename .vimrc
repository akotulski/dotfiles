" POSSIBLY INCOMPLETE, SNAPSHOT OF SOME CONFIG OPTIONS

set nocompatible  " required 
filetype off      " requited


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() " required 

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive' " git
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'Lokaltog/vim-distinguished'
"Bundle 'nanotech/jellybeans.vim'
"Bundle 'tpope/vim-vividchalk'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/a.vim'
"Bundle 'Valloric/YouCompleteMe'


call vundle#end()            " required
filetype plugin indent on    " required



set shiftwidth=2    " two spaces per indent
set tabstop=2       " number of spaces per tab in display
set softtabstop=2   " number of spaces per tab when inserting
set expandtab       " substitute spaces for tabs

syntax enable

" Display.
set ruler           " show cursor position
set nonumber        " hide line numbers
set nolist          " hide tabs and EOL chars
set showcmd         " show normal mode commands as they are entered
set showmode        " show editing mode in status (-- INSERT --)
set showmatch       " flash matching delimiters

" Scrolling.
set scrolljump=5    " scroll five lines at a time vertically
set sidescroll=10   " minumum columns to scroll horizontally

" Search.
" set nohlsearch      " don't persist search highlighting
set incsearch       " search with typeahead

" Indent.
set autoindent      " carry indent over to new lines

set undolevels=1000   " number of undos stored
set viminfo='50,"50   " '=marks for x files, "=registers for x files

set modelines=0

set wildmenu

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


