" Associate file extension with type
"
augroup filetype
  autocmd!
  autocmd! BufRead,BufNewFile *.lic    set filetype=ruby
  autocmd! BufRead,BufNewFile *.coffee set filetype=coffee
augroup END
