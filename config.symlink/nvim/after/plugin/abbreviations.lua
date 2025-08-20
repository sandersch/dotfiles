vim.cmd([[
Abolish communcition{,s} communication{}
Abolish connetion{,s} connection{}
Abolish conjuction{,s} conjunction{}
Abolish destory{,ed,s} destroy{}
Abolish fu{cnito,cnito,cntio,ctio,ncito,ncti,ncto,ntino}n{,s} fu{nctio}n{}
Abolish grammer grammar
Abolish hundread{,s} hundred{}
Abolish idion{,s} idiom
Abolish init{a,ai,i}liz{ation,e,ed,es} init{ia}liz{}
Abolish juction{,s} junction{}
Abolish mutliple{,d,s} multiple{}
Abolish netowrk{,ed,s,ing} network{}
Abolish preform{,ance,s} perform{}
Abolish receve{,d,r,s} receive{}
Abolish recieve{,d,r,s} receive{}
Abolish recive{,d,r,s} receive{}
Abolish reponse response
Abolish wrt with regard to
]])

-- Markdown specific abbreviations
vim.api.nvim_create_augroup("markdown", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  group = "markdown",
  pattern = "markdown",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "i", "...", "…", { expr = false, noremap = true })
    vim.api.nvim_buf_set_keymap(0, "i", "n-", "&ndash;", { expr = false, noremap = true })
    vim.api.nvim_buf_set_keymap(0, "i", "m-", "&mdash;", { expr = false, noremap = true })
  end
})
