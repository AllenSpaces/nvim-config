local M = {}
local status, snacks = pcall(require, "snacks")

if not status then
	M.Config = function()
		vim.notify("snacks is not found ...", vim.log.levels.ERROR, { title = "Nvim" })
	end
	return M
end

function M.Config()
	snacks.setup({
		indent = {
			enabled = true,
			animate = {
				enabled = true,
			},
		},
		notifier = {
			enabled = true,
			history = {
				minimal = true,
			},
			icons = {
				error = "󰬌 ",
				warn = "󰬞 ",
				info = "󰬐 ",
				debug = "󰬋 ",
				trace = "󰬛 ",
			},
		},
		scope = {
			enabled = true,
		},
	})
end

return M
