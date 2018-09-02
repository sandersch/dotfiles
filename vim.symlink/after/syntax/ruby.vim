let s:bcs = b:current_syntax

" this unlet instruction is needed before we load each new syntax
unlet b:current_syntax
syntax include @XML syntax/xml.vim
" unlet b:current_syntax
" syntax include @HTML syntax/html.vim
unlet b:current_syntax
syntax include @SQL syntax/sql.vim
unlet b:current_syntax
syntax include @SHELL syntax/sh.vim

let b:current_syntax = s:bcs

syntax region hereDocText    matchgroup=Statement start=+<<[-~.]*\z([A-Z]\+\)+ end=+^\s*\z1+ contains=NONE
syntax region hereDocDashXml matchgroup=Statement start=+<<[-~.]*\z(XMLDOC\)+  end=+^\s*\z1+ contains=@XML
syntax region hereDocDashHtml matchgroup=Statement start=+<<[-~.]*\z(HTMLDOC\)+  end=+^\s*\z1+ contains=@XML
syntax region hereDocDashSQL matchgroup=Statement start=+<<[-~.]*\z(SQLDOC\)+  end=+^\s*\z1+ contains=@SQL
syntax region hereDocDashShell matchgroup=Statement start=+<<[-~.]*\z(SHELLDOC\)+  end=+^\s*\z1+ contains=@SHELL
