-- General Neovim options
-- Converted from vimrc.symlink

vim.opt.shortmess:append("I")  -- Don't show the Vim welcome screen

-- Set leader key early in case other things use it
vim.g.mapleader = ","

-- Enable syntax highlighting
vim.cmd('syntax enable')
vim.cmd('colorscheme molokai')

-- Set console highlights to be readable with black background
vim.opt.background = 'dark'

-- Make GUI colors light on dark
vim.cmd('hi Normal guibg=black guifg=white')

-- Make pasting work much better
vim.api.nvim_set_keymap('n', '<S-Insert>', ':set paste<CR>"+p:set nopaste<CR>', { noremap = true, silent = true })

vim.opt.autoindent = true      -- Copy indent from current line for new line
vim.opt.smartindent = false    -- 'smartindent' breaks right-shifting of # lines

vim.opt.history = 10000        -- Remember this many commands

vim.opt.number = true          -- Display line numbers
vim.opt.numberwidth = 4        -- Minimum number of columns to show for line numbers
vim.opt.ruler = true           -- Always show the cursor position
vim.opt.showmode = true        -- Always show the mode
vim.opt.showcmd = true         -- Display incomplete commands
vim.opt.incsearch = true       -- Do incremental searching (as you type)
vim.opt.hlsearch = true        -- Highlight the latest search pattern
vim.opt.laststatus = 2         -- Always show a status line

vim.opt.splitright = true      -- Split new vertical windows right of current window

vim.opt.winminheight = 0       -- Allow windows to shrink to status line
vim.opt.winminwidth = 0        -- Allow windows to shrink to vertical separator

vim.opt.linebreak = true       -- Wrap line on word boundaries
vim.opt.wrap = true

vim.opt.expandtab = true       -- Insert spaces for <Tab> press; use spaces to indent
vim.opt.smarttab = true        -- Tab respects 'shiftwidth', 'tabstop', 'softtabstop'
vim.opt.tabstop = 2            -- Set the visible width of tabs
vim.opt.softtabstop = 2        -- Edit as if tabs are 2 characters wide
vim.opt.shiftwidth = 2         -- Number of spaces to use for indent and unindent
vim.opt.shiftround = true      -- Round indent to a multiple of 'shiftwidth'

vim.opt.wildmode = "list:longest,full"
vim.opt.wildmenu = true

vim.opt.virtualedit = "block"

-- Care about case only if I use an uppercase letter
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Set visual bell to nothing
vim.opt.visualbell = true
-- vim.opt.t_vb = ""

-- Make buffers less annoying, i.e., 
-- keep changed buffers without requiring saves
vim.opt.hidden = true

-- Act more 'normal' about backspacing
-- e.g. to backspace past start of edit
vim.opt.backspace = "indent,eol,start"

vim.opt.whichwrap:append("<,>,[,]")

vim.opt.listchars = "tab:>-,trail:·"
vim.opt.list = true

-- Update the swap file every 20 characters. I don't like to lose stuff.
vim.opt.updatecount = 20
