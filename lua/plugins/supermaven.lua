return {
    {
        "supermaven-inc/supermaven-nvim",
        config = function()
            require("supermaven-nvim").setup({})
        end,
        build = ":SupermavenUseFree",
    },
    {
        "hrsh7th/nvim-cmp",
        -- Ensure nvim-cmp loads after supermaven
        dependencies = { "supermaven-inc/supermaven-nvim" },
        opts = function(_, opts)
            -- Insert "supermaven" as a source at the beginning of the list
            table.insert(opts.sources, 1, {
                name = "supermaven",
            })
        end,
    },
}
