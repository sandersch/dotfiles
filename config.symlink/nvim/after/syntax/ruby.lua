-- Save the current syntax value
local current_syntax = vim.b.current_syntax

-- Load XML and SQL syntax for embedding in Ruby heredocs
vim.cmd([[
  unlet b:current_syntax
  syntax include @XML syntax/xml.vim
  unlet b:current_syntax
  syntax include @SQL syntax/sql.vim
]])

-- Restore the original syntax value
vim.b.current_syntax = current_syntax

-- Define heredoc regions with specific syntax highlighting
vim.cmd([[
  syntax region hereDocText    matchgroup=Statement start=+<<[-~.]*\z([A-Z]\+\)+ end=+^\s*\z1+ contains=NONE
  syntax region hereDocDashXml matchgroup=Statement start=+<<[-~.]*\z(XMLDOC\)+  end=+^\s*\z1+ contains=@XML
  syntax region hereDocDashHtml matchgroup=Statement start=+<<[-~.]*\z(HTMLDOC\)+  end=+^\s*\z1+ contains=@XML
  syntax region hereDocDashSQL matchgroup=Statement start=+<<[-~.]*\z(SQLDOC\)+  end=+^\s*\z1+ contains=@SQL
]])
