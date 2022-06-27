local options = {
  -- Basic
  fileencoding = "utf-8",
  -- Behavior
  scrolloff = 8,
  backup = false,
  hlsearch = true,
  ignorecase = true,
  -- Apperance
  title = true,
  number = true,
  relativenumber = true,
  showcmd = true,
  cmdheight = 1,
  laststatus = 2,
  lazyredraw = true,
  wrap = false,
  cursorline = true,
  signcolumn = "yes",
  --Indentation
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  smartindent = true,
  autoindent = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd [[set path+=**]]
vim.cmd [[set wildignore+=*/node_modules/*]]
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
