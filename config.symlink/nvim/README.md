# Neovim Configuration

This is a Lua-based Neovim configuration converted from a Vim vimscript configuration.

## Structure

The configuration follows a modular structure:

- `init.lua` - Main configuration file that loads all modules
- `lua/user/` - Directory containing all configuration modules:
  - `options.lua` - General Neovim options (from vimrc)
  - `plugins.lua` - Plugin management with Packer (from bundles.vim)
  - `keymaps.lua` - Key mappings (from key_maps.vim)
  - `commands.lua` - Custom commands (from commands.vim)
  - `filetypes.lua` - Filetype associations (from myfiletypes.vim)
  - `platform.lua` - Platform-specific settings (from platform_setup.vim)
  - `packer_init.lua` - Packer initialization helper
- `after/plugin/load.lua` - Additional plugin configuration
- `after/syntax/ruby.lua` - Ruby syntax enhancements

## First Run Instructions

1. Launch Neovim
2. Packer will automatically install on first run
3. Run `:PackerSync` to install all plugins
4. Restart Neovim for all changes to take effect

## Key Features

- Uses Packer.nvim for plugin management
- Maintains all original key mappings from your Vim configuration
- Includes support for:
  - Language Server Protocol via LanguageClient-neovim
  - ALE for linting/fixing
  - Telescope for fuzzy finding
  - NERDTree for file navigation
  - All tpope plugins (fugitive, surround, etc.)
  - GitHub Copilot

## Leader Key

The leader key is set to `,` (comma)

Enjoy your new Neovim setup!