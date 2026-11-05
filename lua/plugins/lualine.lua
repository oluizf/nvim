return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    event = "VeryLazy",
    config = function()
        require("lualine").setup({
            options = {
                theme = "auto",
                -- separadores sutis
                component_separators = { left = "|", right = "|" },
                section_separators = { left = "", right = "" },
                -- barra unica no rodape do neovim
                globalstatus = true,
                icons_enabled = true,
            },
            sections = {
                -- a: modo atual
                lualine_a = { "mode" },
                -- b: controle de versao e alertas
                lualine_b = { "branch", "diff", "diagnostics" },
                -- c: caminho relativo do arquivo
                lualine_c = { { "filename", path = 1 } },
                -- x: formato e linguagem
                lualine_x = { "encoding", "fileformat", "filetype" },
                -- y: posicao no arquivo
                lualine_y = { "progress" },
                -- z: coordenadas do cursor
                lualine_z = { "location" },
            },
            -- adapta a barra quando a arvore estiver aberta
            extensions = { "nvim-tree" },
        })
    end,
}
