set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'autozimu/LanguageClient-neovim'
Bundle 'flazz/vim-colorschemes'
Bundle 'gmarik/vundle'
Bundle 'maxmellon/vim-jsx-pretty'
Bundle 'mileszs/ack.vim'
Bundle 'rking/ag.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'spiiph/vim-space'
Bundle 'suan/vim-instant-markdown'
Bundle 'taglist.vim'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-tbone'
Bundle 'tpope/vim-unimpaired'
Bundle 'tsaleh/vim-align'
Bundle 'yuezk/vim-js'

Bundle 'dense-analysis/ale'
Bundle 'github/copilot.vim'
Bundle 'nvim-telescope/telescope.nvim'
Bundle 'nvim-lua/plenary.nvim'

filetype plugin indent on     " required!
