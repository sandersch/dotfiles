let s:bcs = b:current_syntax

" this unlet instruction is needed before we load each new syntax
unlet b:current_syntax
syntax include @XML syntax/xml.vim
unlet b:current_syntax
syntax include @SQL syntax/sql.vim

let b:current_syntax = s:bcs

let b:ale_fixers = ["sorbet", "rubocop", "remove_trailing_lines", "trim_whitespace"]

syntax region hereDocText    matchgroup=Statement start=+<<[-~.]*\z([A-Z]\+\)+ end=+^\s*\z1+ contains=NONE
syntax region hereDocDashXml matchgroup=Statement start=+<<[-~.]*\z(XMLDOC\)+  end=+^\s*\z1+ contains=@XML
syntax region hereDocDashHtml matchgroup=Statement start=+<<[-~.]*\z(HTMLDOC\)+  end=+^\s*\z1+ contains=@XML
syntax region hereDocDashSQL matchgroup=Statement start=+<<[-~.]*\z(SQLDOC\)+  end=+^\s*\z1+ contains=@SQL
