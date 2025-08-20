-- Required for operations modifying multiple buffers like rename
vim.opt.hidden = true

-- Make sure we load abbreviations
-- vim.cmd('source $HOME/.vim/abbreviations.vim')

-- vim.lsp.set_log_level("debug")
-- language servers
--local capabilities = vim.lsp.protocol.make_client_capabilities()
vim.lsp.config('ruby_lsp', {
  capabilities = capabilities,
  on_attach = function(client, buffer)
    -- Prefer the symbols provided by Sorbet, since they seem faster and Telescope can't handle both.
    -- https://www.reddit.com/r/neovim/comments/zksmsa/telescope_lsp_dynamic_workspace_symbol_broken/
    client.server_capabilities.workspaceSymbolProvider = false
  end,
  init_options = {
    addonSettings = {
      ["Ruby LSP Rails"] = {
        enablePendingMigrationsPrompt = false
      }
    }
  }
})
vim.lsp.enable('ruby_lsp')

vim.lsp.config('sorbet', {
  capabilities = capabilities,
})
vim.lsp.enable('sorbet')
-- vim.lsp.enable('solargraph')
--vim.lsp.config('rubocop', {
  --settings = {
    --['rubocop'] = {
      --cmd = { 'bundle exec rubocop', '--lsp' },
    --},
  --}
--})
-- vim.lsp.enable('rubocop')
vim.diagnostic.config({ virtual_text = true })

-- Configure ALE fixers for Ruby
-- vim.b.ale_fixers = {"sorbet", "rubocop", "remove_trailing_lines", "trim_whitespace"}
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>d", function()
    local new_config = not vim.diagnostic.config().virtual_lines
  vim.diagnostic.config({ virtual_lines = new_config })
end, { desc = 'Toggle diagnostic virtual_lines' })
