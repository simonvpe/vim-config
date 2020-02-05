" cargo install rg

filetype plugin indent on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'dense-analysis/ale'
  Plug 'jacoborus/tender.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'rhysd/vim-clang-format'
  Plug 'scrooloose/nerdcommenter'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

colors tender
syntax on
set number relativenumber
set ff=unix
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
set list
set listchars=tab:>-

let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'cpp': ['clang-format', 'clangtidy']}
let g:ale_linters = {'cpp': ['clangd', 'clangtidy', 'cppcheck']}
let g:ale_c_parse_compile_commands = 1
let g:ale_c_gcc_options = ""
let g:ale_cpp_clang_options = ""
let g:ale_c_build_dir_names = ['build', 'build-x86/Debug', 'build-x86/Release', 'build-x86/LLVMDebug', 'build-x86/LLVMRelease']

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
