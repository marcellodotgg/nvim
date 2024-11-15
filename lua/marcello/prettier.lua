local null_ls = require("null-ls")

-- Set up Prettier with null-ls for HTML, CSS, and JavaScript
null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier.with({
            filetypes = { "html", "css", "javascript", "typescript", "json" }, -- Add more types as needed
        }),
    },
    on_attach = function(client, bufnr)
        -- Format on save
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
})
