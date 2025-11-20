local M = {}
local status_noice, noice = pcall(require, "noice")

if not status_noice then
	M.Config = function()
		vim.notify("noice is not found", vim.log.levels.ERROR, { title = "Nvim" })
	end
	return M
end

function M.Config()
	noice.setup({
		cmdline = {
			enabled = true,
			view = "cmdline_popup",
			position = {
				row = 1,
				col = "50%",
			},
			format = {
				cmdline = { icon = " " },
				search_down = { icon = "󰁈 " },
				search_up = { icon = " " },
				filter = { icon = "󰤶 " },
				help = { icon = "󱏘 " },
				input = { icon = "󰽉 " },
				lua = { icon = " " },
			},
		},
		lsp = {
			progress = {
				enabled = false,
			},
		},
		presets = {
			bottom_search = false,
			command_palette = true,
			long_message_to_split = true,
			inc_rename = true,
			lsp_doc_border = true,
		},
	})
end

return M
