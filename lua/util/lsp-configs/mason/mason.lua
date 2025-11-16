local status, mason = pcall(require, "mason")
local lsp_configure = require("util.lsp-configs.lsp-configure")
local M = {}

if not status then
	M.Config = function()
		vim.notify("mason is not found ...", vim.log.levels.ERROR, { title = "Nvim" })
	end
	return M
end

function M.Config()
	mason.setup({
		install_root_dir = os.getenv("HOME") .. "/.nvim-utils/mason",
		ui = {
			border = "rounded",
			width = 0.6,
			height = 0.6,
			icons = {
				package_installed = "",
				package_pending = "󰏔",
				package_uninstalled = "󱧙",
			},
		},
	})

	lsp_configure.LspConfig.enable_servers()
end

return M
