return {
	filetypes = {
		"json",
		"jsonc",
		"json5",
		"jsonb",
		"jsonb.json",
		"jsonb.jsonc",
		"jsonb.json5",
	},
	init_options = {
		json = {
			schemas = {
				{
					fileMatch = { "/.luarc.json", "/.luarc.jsonc" },
					url = "https://raw.githubusercontent.com/lukeautry/json-schema-language-server/main/schema/luarc.json",
				},
			},
		},
	},
}
