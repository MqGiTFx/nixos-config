
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.opt.runtimepath:prepend("~/.config/nvim/lua/lazy.nvim")

require('lazy').setup({
	
    -- Color sheme
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    -- Colorize
    { 'norcalli/nvim-colorizer.lua' },

    -- illuminate
    { 'RRethy/vim-illuminate' },

   -- bufferline
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

    -- Terminal
    {'akinsho/toggleterm.nvim', version = "*", config = true},
    
    -- Tresitter
    {'nvim-treesitter/nvim-treesitter'},
    
    -- Auto Pairs
    {'windwp/nvim-autopairs'},

    -- LSP
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },
    {'onsails/lspkind-nvim'},

    -- For vsnip users
    { 'hrsh7th/cmp-vsnip' },
    { 'hrsh7th/vim-vsnip' },

    -- Uncomment for luasnip users
    -- { 'L3MON4D3/LuaSnip' },
    -- { 'saadparwaiz1/cmp_luasnip' },

    -- Uncomment for ultisnips users
    -- { 'SirVer/ultisnips' },
    -- { 'quangnguyen30192/cmp-nvim-ultisnips' },

    -- Uncomment for snippy users
    -- { 'dcampos/nvim-snippy' },
    -- { 'dcampos/cmp-snippy' },

    { -- Lua airline
        'nvim-lualine/lualine.nvim',
        opts = {},
        dependencies = {
            'kyazdani42/nvim-web-devicons' -- Icons
        }
    },
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- File tree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker",
        },
    },

    -- Mini
    { 'echasnovski/mini.move', version = false },
})

