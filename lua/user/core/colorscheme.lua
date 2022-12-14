local status, _ = pcall(vim.cmd, "colorscheme one_monokai")
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end
