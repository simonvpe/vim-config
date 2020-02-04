filetype plugin indent on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-sensible'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'jacoborus/tender.vim'
  Plug 'rhysd/vim-clang-format'
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/nerdcommenter'
  Plug 'dense-analysis/ale'
  Plug 'tpope/vim-surround'
call plug#end()

colors tender
syntax on
set number relativenumber
set ff=unix
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline

let g:ale_c_parse_compile_commands = 1

