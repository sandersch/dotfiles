-- Platform-specific settings
-- Converted from platform_setup.vim

-- Set 'selection', 'selectmode', 'mousemodel' and 'keymodel' to make
-- both keyboard- and mouse-based highlighting behave more like Windows
-- and OS X.
vim.opt.selectmode = "mouse,key"
vim.opt.keymodel = "startsel,stopsel"
vim.opt.selection = "exclusive"
vim.opt.mousemodel = "popup"

-- Windows-specific settings
if vim.fn.has("win32") == 1 then
  -- CTRL-X and SHIFT-Del are Cut
  vim.api.nvim_set_keymap('v', '<C-X>', '"+x', {})
  vim.api.nvim_set_keymap('v', '<S-Del>', '"+x', {})

  -- CTRL-C and CTRL-Insert are Copy
  vim.api.nvim_set_keymap('v', '<C-C>', '"+y', {})
  vim.api.nvim_set_keymap('v', '<C-Insert>', '"+y', {})

  -- CTRL-V and SHIFT-Insert are Paste
  vim.api.nvim_set_keymap('', '<C-V>', '"+gP', {})
  vim.api.nvim_set_keymap('', '<S-Insert>', '"+gP', {})

  vim.api.nvim_set_keymap('c', '<C-V>', '<C-R>+', {})
  vim.api.nvim_set_keymap('c', '<S-Insert>', '<C-R>+', {})

  vim.api.nvim_set_keymap('i', '<S-Insert>', '<C-V>', {})
  vim.api.nvim_set_keymap('v', '<S-Insert>', '<C-V>', {})

  -- For CTRL-V to work autoselect must be off on non-Unix systems
  if vim.fn.has("unix") == 0 then
    vim.opt.guioptions:remove("a")
  end

  -- Use CTRL-Q to do what CTRL-V used to do
  vim.api.nvim_set_keymap('n', '<C-Q>', '<C-V>', {})

  -- CTRL-F4 is Close window
  vim.api.nvim_set_keymap('n', '<C-F4>', '<C-W>c', {})
  vim.api.nvim_set_keymap('i', '<C-F4>', '<C-O><C-W>c', {})
  vim.api.nvim_set_keymap('c', '<C-F4>', '<C-C><C-W>c', {})
  vim.api.nvim_set_keymap('o', '<C-F4>', '<C-C><C-W>c', {})

  -- Control+Tab moves to the next window
  vim.api.nvim_set_keymap('n', '<C-Tab>', '<C-W>w', {})
  vim.api.nvim_set_keymap('i', '<C-Tab>', '<C-O><C-W>w', {})
  vim.api.nvim_set_keymap('c', '<C-Tab>', '<C-C><C-W>w', {})
  vim.api.nvim_set_keymap('o', '<C-Tab>', '<C-C><C-W>w', {})

  -- Alt-Space is System menu (GUI only)
  if vim.fn.has("gui") == 1 then
    vim.api.nvim_set_keymap('n', '<M-Space>', ':simalt ~<CR>', {})
    vim.api.nvim_set_keymap('i', '<M-Space>', '<C-O>:simalt ~<CR>', {})
    vim.api.nvim_set_keymap('c', '<M-Space>', '<C-C>:simalt ~<CR>', {})
  end

  -- Use internal grep on Windows
  vim.opt.grepprg = "internal"
end

-- Set backup directories based on OS
if vim.fn.has("unix") == 1 then
  -- Remove the current directory from the backup directory list
  vim.opt.backupdir:remove(".")
  
  -- Save backup files in the current user's ~/tmp directory, or in the
  -- system /tmp directory if that's not possible
  vim.opt.backupdir:prepend { "~/tmp", "/tmp" }
  
  -- Try to put swap files in ~/tmp or /var/tmp
  vim.opt.directory = "~/tmp/,/var/tmp/."
elseif vim.fn.has("win32") == 1 then
  -- Remove the current directory from the backup directory list
  vim.opt.backupdir:remove(".")
  
  -- Save backup files in the current user's TEMP directory
  vim.opt.backupdir:prepend("$TEMP")
  
  -- Put swap files in TEMP, too
  vim.opt.directory = "$TEMP\\\\\\\\"
end

-- For tmux (and probably screen)
if string.find(vim.env.TERM or "", "^screen") then
  -- tmux will send xterm-style keys when its xterm-keys option is on
  vim.cmd([[
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
  ]])
end