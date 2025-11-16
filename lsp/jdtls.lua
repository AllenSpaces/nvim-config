return {
    filetypes = {
        "java",
    },
    init_options = {
        jdt = {
            settings = {
                java = {
                    home = os.getenv("JAVA_HOME"),
                },
            },
        },
    },
}
