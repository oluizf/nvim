return {
    "nvim-telescope/telescope.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local actions = require("telescope.actions")
        local builtin = require("telescope.builtin")

        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        -- navega na lista com ctrl+j e ctrl+k
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
                    },
                },
            },
        })

        -- busca basica no projeto
        vim.keymap.set("n", "<leader>ff", builtin.find_files)
        vim.keymap.set("n", "<leader>fg", builtin.live_grep)
        vim.keymap.set("n", "<leader>fb", builtin.buffers)
        vim.keymap.set("n", "<leader>fo", builtin.oldfiles)

        -- busca a palavra sob o cursor
        vim.keymap.set("n", "<leader>fs", builtin.grep_string)

        -- atalhos de sistema e config
        vim.keymap.set("n", "<leader>fh", builtin.help_tags)
        vim.keymap.set("n", "<leader>fm", builtin.man_pages)
        vim.keymap.set("n", "<leader>fi", function()
            builtin.find_files({ cwd = "~/.config/nvim" })
        end)
    end,
}
