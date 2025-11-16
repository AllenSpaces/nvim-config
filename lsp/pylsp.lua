return {
    filetypes = {
        "python",
    },
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    ignore = { "W391", "W503" },
                    maxLineLength = 200,
                },
                jedi_completion = {
                    eager = true,
                },
                pylint = {
                    enabled = false,
                },
            },
        },
    },
}
