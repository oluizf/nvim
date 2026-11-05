return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master", -- branch estavel compativel com Neovim 0.10/0.11
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        require("nvim-treesitter.configs").setup({
            -- linguagens que serao baixadas e compiladas automaticamente
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "vimdoc",
                "bash",
                "markdown",
                "markdown_inline",
            },

            -- instala automaticamente se abrir um arquivo de linguagem nao listada
            auto_install = true,

            -- ativa o realce de sintaxe baseado em AST
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },

            -- indentacao inteligente baseada na arvore de codigo
            indent = {
                enable = true,
            },
        })
    end,
}
