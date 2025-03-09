
-----------------
-- ОБЩИЕ ОПЦИИ --
-----------------

-- Basic
vim.opt.cursorline = true
vim.opt.showcmd = true
vim.opt.wrap = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.swapfile = false
vim.opt.encoding = 'utf-8'
vim.opt.shell = "fish"            -- Shell по умолчанию
vim.opt.fileformat = "unix"
vim.opt.guifont = "JetBrainsMono"

-- Mouse
vim.opt.mouse = "a"                    -- Возможность использовать мышку
vim.opt.mousefocus = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"      -- Разрешить общий буфер обмена

-- Подсвечивает на доли секунды скопированный текст
vim.api.nvim_exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=300}
augroup end
]], false)


-- Line Numbers
vim.opt.number = true


-- Fillchars
vim.opt.fillchars = {
    vert = "│",
    fold = "⠀",
    eob = " ", -- suppress ~ at EndOfBuffer
    -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
    msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸"
}

-- Basic settings
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.cindent = true
vim.opt.smarttab = true

-- Python
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.opt.shiftwidth = 4
        vim.opt.tabstop = 4
        vim.opt.softtabstop = 4
    end,
})

-- Nix, Json, Lua
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "nix", "json", "lua" },
    callback = function()
        vim.opt.shiftwidth = 2
        vim.opt.tabstop = 2
        vim.opt.softtabstop = 2
    end,
})

-- Commands
vim.cmd([[
filetype indent plugin on
syntax enable
colorscheme catppuccin-mocha
]])

