" POSSIBLY INCOMPLETE, SNAPSHOT OF SOME CONFIG OPTIONS

set nocompatible  " required 
filetype off      " requited

" https://github.com/VundleVim/Vundle.vim/wiki#i-dont-use-a-posix-shell-ie-bashsh
set shell=bash

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
Plugin 'vim-syntastic/syntastic'
"rust
Plugin 'rust-lang/rust.vim'
"Plugin 'racer-rust/vim-racer'

Plugin 'scrooloose/nerdtree'

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
"map <Leader>q :ccl<CR>
"previous buffer
map <Leader>, <C-^>
" lazy :
nnoremap ; :
" Yank from the cursor to the end of the line, to be consistent
" with C and D.
nnoremap Y y$

"enable mouse support
set mouse=a

" from https://github.com/spf13/spf13-vim/blob/master/.vimrc
if has('statusline')
  set laststatus=2
  " Broken down into easily includeable segments
  set statusline=%<%f\    " Filename
  set statusline+=%w%h%m%r " Options
  set statusline+=%{fugitive#statusline()} "  Git Hotness
  "set statusline+=\ [%{getcwd()}]          " current dir
  set statusline+=%#warningmsg#
  " this line is from syntastic
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_enable_signs=1
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

" https://github.com/ivanceras/rust-vim-setup
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror

"CTRL-t to toggle tree view with CTRL-t
nmap <silent> <C-t> :NERDTreeToggle<CR>
"Set F2 to put the cursor to the nerdtree
nmap <silent> <F2> :NERDTreeFind<CR>

"syntastic recommended config
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" always show signcolumn without special color. For syntastic
autocmd BufRead,BufNewFile * setlocal signcolumn=yes
highlight clear SignColumn

"rust https://github.com/rust-lang/rust.vim/pull/147
"let g:syntastic_rust_checkers = ['rustc']
let g:syntastic_rust_checkers = ['cargo']
let g:rustfmt_autosave = 1

