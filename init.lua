require("user.plugins-setup")
require("user.core.options")
require("user.core.keymaps")
require("user.core.colorscheme")
require("user.plugins.alpha")
require("user.plugins.autopairs")
require("user.plugins.breadcrumb")
require("user.plugins.colorizer")
require("user.plugins.comment")
require("user.plugins.cybu")
require("user.plugins.gitsigns")
require("user.plugins.hop")
require("user.plugins.icons")
require("user.plugins.illuminate")
require("user.plugins.indent_blankline")
require("user.plugins.jaq")
require("user.plugins.lir")
require("user.plugins.lualine")
require("user.plugins.nvim-cmp")
require("user.plugins.lsp.lspconfig")
require("user.plugins.lsp.lspsaga")
require("user.plugins.lsp.mason")
require("user.plugins.neoscroll")
require("user.plugins.lsp.null-ls")
require("user.plugins.nvim-tree")
require("user.plugins.project")
require("user.plugins.telescope")
require("user.plugins.toggleterm")
require("user.plugins.treesitter")

-- GUI config
vim.opt.guifont = { "Iosevka", ":h18" }
-- vim.g.neovide_transparency = 0
-- vim.g.transparency = 0.8
-- vim.g.neovide_transparency = 0.4
vim.g.neovide_remember_window_size = true
-- vim.g.neovide_cursor_vfx_mode = "railgun"
vim.g.popui_border_style = "double"
-- allow us to use the cmd key in neovide
vim.g.neovide_input_use_logo = true
