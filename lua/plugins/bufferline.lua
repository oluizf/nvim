return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    event = "VeryLazy",
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers",
                separator_style = "thin",
                always_show_bufferline = true,
                show_buffer_close_icons = false,
                show_close_icon = false,
                diagnostics = "nvim_lsp",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left",
                    },
                },
            },
        })

        -- navegacao entre abas
        vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>")
        vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>")

        -- fechar aba atual
        vim.keymap.set("n", "<leader>x", "<cmd>bdelete<CR>")
    end,
}
