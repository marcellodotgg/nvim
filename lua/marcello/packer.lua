-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'
    use 'projekt0n/github-nvim-theme'

    use { 'nvim-lua/plenary.nvim' }
    use {
        'jose-elias-alvarez/null-ls.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { "catppuccin/nvim", as = "catppuccin" }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use('tpope/vim-fugitive')

    use({ 'VonHeikemen/lsp-zero.nvim', branch = 'v4.x' })
    use({ 'saadparwaiz1/cmp_luasnip' })
    use({ 'L3MON4D3/LuaSnip' })
    use({ 'neovim/nvim-lspconfig' })
    use({ 'hrsh7th/nvim-cmp' })
    use({ 'hrsh7th/cmp-nvim-lsp' })

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    -- init.lua
    use "lukas-reineke/lsp-format.nvim"
end)
