local options = {
  guicursor = "n-sm:block,i:ver25,v-r:hor20",
  autoindent = true,
  smartindent = true,
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  number = true,
  expandtab = true,
  showtabline = 1,
  cmdheight = 1,

  showmatch = true,
  ignorecase = true,
  smartcase = true,

  splitbelow = true,
  splitright = true,

  shell = "fish",
  hidden = true,
  wrap = false,

  cursorline = true,
  signcolumn = "yes",
  errorbells = false,
  colorcolumn = "70",

  title = true,

  fileencoding = "utf-8",
  encoding = "utf-8",

  backup = false,
  writebackup = false,
  swapfile = false,
  undodir = os.getenv("HOME") .. "/.vim/undodir",
  undofile = true,

  hlsearch = false,
  incsearch = true,

  termguicolors = true,
  scrolloff = 5,

  updatetime = 50,
}

for option, value in pairs(options) do
  vim.opt[option] = value
end

