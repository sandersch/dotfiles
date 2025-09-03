-- Commands
-- Converted from commands.vim

-- Create the DiffOrig command if it doesn't exist
vim.cmd([[
  if !exists(":DiffOrig")
    command DiffOrig vertical new | set buftype=nofile | read # | 0d_ | diffthis | wincmd p | diffthis
  endif
]])

-- Close current buffer without closing window
vim.cmd([[
  command! Bd enew<Bar>bd #
]])

-- Common command abbreviations
vim.cmd([[
  cabbrev Q quit
  cabbrev W write
  cabbrev Wq wq
  cabbrev WQ wq
]])
