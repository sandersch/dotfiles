-- Key mappings
-- Converted from key_maps.vim

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Map j/k combos to get out of insert mode and turn off search highlighting
map('i', 'jk', '<ESC>:noh<CR>', opts)
map('i', 'kj', '<ESC>:noh<CR>', opts)
map('i', 'jj', '<ESC>:noh<CR>', opts)

-- F2 inserts the date and time at the cursor
map('i', '<F2>', '<C-R>=strftime("%c")<CR>', opts)
map('n', '<F2>', 'a<F2><Esc>', opts)

-- Tab/Shift+Tab indent/unindent the highlighted block (and maintain the highlight)
map('v', '>', '>gv', opts)
map('v', '<', '<gv', opts)

-- Draw lines of dashes or equal signs below us based on the length of the current line
map('i', '<C-U>-', '<Esc>yyp^v$r-ja', opts)
map('i', '<C-U>=', '<Esc>yyp^v$r=ja', opts)

-- Center the display line after searches
map('n', 'n', 'nzz', opts)
map('n', 'N', 'Nzz', opts)
map('n', '*', '*zz', opts)
map('n', '#', '#zz', opts)
map('n', 'g*', 'g*zz', opts)
map('n', 'g#', 'g#zz', opts)

-- Make page-forward and page-backward work in insert mode
map('i', '<C-F>', '<C-O><C-F>', opts)
map('i', '<C-B>', '<C-O><C-B>', opts)

-- Unimpaired configuration
-- Bubble single lines
map('n', '<C-Up>', '[e', {})
map('n', '<C-Down>', ']e', {})
map('n', '<C-k>', '[e', {})
map('n', '<C-j>', ']e', {})
-- Bubble multiple lines
map('v', '<C-Up>', '[egv', {})
map('v', '<C-Down>', ']egv', {})
map('v', '<C-k>', '[egv', {})
map('v', '<C-j>', ']egv', {})

-- Turn On/Off NERDTree
map('n', '<leader>n', ':NERDTreeToggle<CR>', opts)

-- Get rid of the distracting search highlighting easily
map('n', '<leader><space>', ':noh<cr>', opts)

-- Move up and down by screen lines with the arrow keys
map('n', '<Up>', 'gk', opts)
map('n', '<Down>', 'gj', opts)

-- I hit <F1> more often when trying to hit ESC than when I want :help
map('i', '<F1>', '<ESC>', opts)
map('n', '<F1>', '<ESC>', opts)
map('v', '<F1>', '<ESC>', opts)

-- Strip all the trailing whitespace in the current file
map('n', '<leader>W', ':%s/\\s\\+$//<cr>:let @/=\'\'<CR>', opts)

-- Make it easier to invoke ack for searching
map('n', '<leader>a', ':Ack<SPACE>', opts)

-- Reselect last pasted text. Makes it easy to adjust indention, etc
map('n', '<leader>v', 'V`]', opts)

-- Make dot operator work in visual mode
map('x', '.', ':normal .<CR>', opts)

-- Find files using Telescope command-line sugar
map('n', '<leader>t', '<cmd>Telescope find_files<cr>', opts)
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)
map('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>', opts)
