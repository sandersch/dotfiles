-- Filetype settings
-- Converted from myfiletypes.vim

-- Associate file extensions with types
vim.cmd([[
  augroup filetypes
    autocmd!
    autocmd BufRead,BufNewFile *.lic    set filetype=ruby
    autocmd BufRead,BufNewFile *.coffee set filetype=coffee
    autocmd FileType           markdown setlocal spell spelllang=en_us
  augroup END
]])

-- Syntax settings for ruby
--vim.cmd([[
  --augroup ruby_syntax
    --autocmd!
    --autocmd FileType ruby let b:ale_fixers = ["sorbet", "rubocop", "remove_trailing_lines", "trim_whitespace"]
  --augroup END
--]])
