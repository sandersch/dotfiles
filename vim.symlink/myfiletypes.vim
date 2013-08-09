" Associate file extension with type
"
augroup filetype
    au!
    au! BufRead,BufNewFile *.lic    set filetype=ruby
    au! BufRead,BufNewFile *.coffee set filetype=coffee
augroup END
