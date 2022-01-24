vim.cmd [[
set termguicolors
set background=dark
try
  colorscheme dracula
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
endtry
]]
