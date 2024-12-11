return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },
    {
        "justinmk/vim-sneak",
        lazy = false,
        config = function()
            -- 启用 label 功能
            vim.g['sneak#label'] = 1
        end,
    },
    {
        "tpope/vim-repeat",
        lazy = false
    },
    {
        "tpope/vim-surround",
        lazy = false
    },
    {
        "f-person/git-blame.nvim",
        event = "VeryLazy",
        opts = {
            enabled = true,
            message_template = " <summary> • <date> • <author> • <<sha>>",
            date_format = "%m-%d-%Y %H:%M:%S",
            virtual_text_column = 1,
        },
    }
}
