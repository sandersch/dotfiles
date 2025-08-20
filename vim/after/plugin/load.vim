" Required for operations modifying multiple buffers like rename.
set hidden

source $HOME/.vim/abbreviations.vim
let g:LanguageClient_serverCommands = {
      \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
      \ }

" Rename - rn => rename
noremap <leader>rn :call LanguageClient#textDocument_rename()<CR>
