-- Plugin management
-- Converted from bundles.vim to use packer.nvim

-- Initialize packer
local packer_bootstrap = require('user.packer_init')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- Original plugins from bundles.vim
  -- use {'autozimu/LanguageClient-neovim',
  -- branch = 'next',
  -- run = 'bash install.sh'}
  use 'neovim/nvim-lspconfig'
  use 'nvim-treesitter/nvim-treesitter'

  use 'flazz/vim-colorschemes'
  use 'maxmellon/vim-jsx-pretty'
  use 'mileszs/ack.vim'
  use 'rking/ag.vim'
  use 'scrooloose/nerdcommenter'
  use 'scrooloose/nerdtree'
  use 'spiiph/vim-space'
  use 'suan/vim-instant-markdown'
  use 'vim-scripts/taglist.vim'
  use 'tpope/vim-abolish'
  use 'tpope/vim-bundler'
  use 'tpope/vim-eunuch'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-markdown'
  use 'tpope/vim-rails'
  use 'tpope/vim-rake'
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'
  use 'tpope/vim-tbone'
  use 'tpope/vim-unimpaired'
  use 'tsaleh/vim-align'
  use 'yuezk/vim-js'

  use 'dense-analysis/ale'
  use 'github/copilot.vim'

  -- Telescope requires plenary
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
end)
