local opt = vim.opt -- for conciseness

opt.autoindent = true
opt.background = "dark"
opt.backup = false
opt.clipboard = "unnamedplus"
opt.cmdheight = 1
opt.completeopt = { "menuone", "noselect" }
opt.conceallevel = 0
opt.cursorline = true
opt.expandtab = true
opt.fileencoding = "utf-8"
opt.guifont = "Iosevka"
opt.hlsearch = true
opt.ignorecase = true
opt.laststatus = 3
opt.mouse = "a"
opt.number = true
opt.numberwidth = 4
opt.pumheight = 10
opt.relativenumber = true
opt.ruler = false
opt.scrolloff = 8
opt.shiftwidth = 2
opt.showcmd = false
opt.showmode = false
opt.showtabline = 0
opt.sidescrolloff = 8
opt.signcolumn = "yes"
opt.smartcase = true
opt.smartindent = true
opt.splitbelow = true
opt.splitright = true
opt.swapfile = false
opt.tabstop = 2
opt.termguicolors = true
opt.timeoutlen = 1000
opt.title = true
opt.undofile = true
opt.updatetime = 100
opt.wrap = false
opt.writebackup = false

vim.opt.fillchars = vim.opt.fillchars + "eob: "
vim.opt.fillchars:append({
  stl = " ",
})

vim.opt.shortmess:append("c")

-- for k, v in pairs(options) do
--   vim.opt[k] = v
-- end

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])
vim.cmd([[set formatoptions-=cro]]) -- TODO: this doesn't seem to work

vim.filetype.add({
  extension = {
    conf = "dosini",
  },
})
