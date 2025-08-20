-- Main Neovim configuration file
-- Converted from vimscript to lua

-- Initialize global configurations
require('user.plugins')        -- Plugin management (from bundles.vim)
require('user.options')        -- General Neovim options (from vimrc.symlink)
require('user.keymaps')        -- Key mappings (from key_maps.vim)
require('user.commands')       -- Custom commands (from commands.vim)
require('user.filetypes')      -- Filetype settings (from myfiletypes.vim)
require('user.platform')       -- Platform-specific settings (from platform_setup.vim)
