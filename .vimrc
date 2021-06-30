let mapleader=" "

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif		

call plug#begin('~/.vim/plugged')

" Plugin
    Plug 'junegunn/goyo.vim'
	Plug 'psliwka/vim-smoothie'

call plug#end()

" basics
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
	set tabstop=4 shiftwidth=4

" Temporary files location
	set backupdir=.backup/,~/.backup/,/tmp//
	set directory=.swp/,~/.swp/,/tmp//
	set undodir=.undo/,~/.undo/,/tmp//

" enable autocompletion
	set wildmode=longest,list,full

" Indentation
	set autoindent

" When deleting whitespace at the beginning of a line, delete
" 1 tab worth of spaces 	
	set smarttab

" Make your code text more readable
	map <leader>g :Goyo \| set linebreak<CR>

" Split
	set splitbelow splitright

" Lightline
	set laststatus=2
	set noshowmode

" Mapping key
	map <leader>1 1gt
	map <leader>2 2gt
	map <leader>3 3gt
	map <leader>4 4gt
	


" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
" DEPRECATED : vim is lagging
" source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif
