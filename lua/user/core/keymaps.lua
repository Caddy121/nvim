-- leader key
vim.g.mapleader = " "

local keymap = vim.keymap

-- Better window navigation
keymap.set("n", "<A-n>", "<C-w>h")
keymap.set("n", "<A-e>", "<C-w>j")
keymap.set("n", "<A-u>", "<C-w>k")
keymap.set("n", "<A-i>", "<C-w>l")
keymap.set("n", "<A-tab>", "<C-6>")

-- Close buffer
keymap.set("n", "<leader>c", ":Bdelete!<CR>")

-- Quit/Save
keymap.set("n", "<C-q>", ":q! <cr>")
keymap.set("n", "<C-w>", ":w <cr>")
keymap.set("n", "<C-z>", ":wq <cr>")

-- Delete word backward
keymap.set("i", "<A-BS>", "<c-w>")

function _G.set_terminal_keymaps()
	vim.api.nvim_buf_set_keymap(0, "t", "<A-h>", [[<C-\><C-n><C-W>h]])
	vim.api.nvim_buf_set_keymap(0, "t", "<A-j>", [[<C-\><C-n><C-W>j]])
	vim.api.nvim_buf_set_keymap(0, "t", "<A-k>", [[<C-\><C-n><C-W>k]])
	vim.api.nvim_buf_set_keymap(0, "t", "<A-l>", [[<C-\><C-n><C-W>l]])
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize -2<cr>")
keymap.set("n", "<C-Down>", ":resize +2<cr>")
keymap.set("n", "<C-Left>", ":vertical resize -2<cr>")
keymap.set("n", "<C-Right>", ":vertical resize +2<cr>")

-- Center
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")
keymap.set("n", "*", "*zz")
keymap.set("n", "#", "#zz")
-- keymap.set("n", "g", "gzz")
-- keymap.set("n", "g#", "g#zz")

-- Move text up and down
keymap.set("n", "E", ":move '>+1<CR>gv-gv")
keymap.set("v", "E", ":move '>+1<CR>gv-gv")
keymap.set("n", "U", ":move '<-2<CR>gv-gv")
keymap.set("v", "U", ":move '<-2<CR>gv-gv")

-- keymap("x", "E", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "U", ":move '<-2<CR>gv-gv", opts)

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Don't yank
-- lvim.keys.normal_mode["x"] = "_x"
-- lvim.keys.visual_mode["p"] = "_dP"
-- lvim.keys.normal_mode["p"] = "_dP"
-- keymap("x", "x", '"_x', opts)

-- Stay in indent mode
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Undotree
-- lvim.key.normal_mode["F5"] = ":UndotreeToggle <cr>"

-- keymap("n", "<F7>", "<cmd>TSHighlightCapturesUnderCursor<cr>", opts)
keymap.set("n", "-", ":lua require'lir.float'.toggle()<cr>")
-- keymap("n", "gx", [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)
-- keymap("n", "<m-v>", "<cmd>lua require('lsp_lines').toggle()<cr>", opts)

-- keymap("n", "<m-/>", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
-- keymap("x", "<m-/>", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>', opts)

-- vim.api.nvim_set_keymap(
--   "n",
--   "<tab>",
--   "<cmd>lua require('telescope').extensions.harpoon.marks(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal', prompt_title='Harpoon'})<cr>"
-- )
-- vim.api.nvim_set_keymap(
--   "n",
--   "<s-tab>",
--   "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})<cr>"
-- )

-- clear search highlights
keymap.set("n", "<leader>n", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>v", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>h", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
-- keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
-- keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
-- keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
keymap.set("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format({ async = true })<cr>")

vim.cmd([[
  function! QuickFixToggle()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
      copen
    else
      cclose
    endif
  endfunction
]])

-- lvim.keys.normal_mode["<m-q>"] = ":call QuickFixToggle()<cr>"

-- vim.api.nvim_set_keymap("n", "K", ":lua require('user.keymaps').show_documentation()<CR>")
