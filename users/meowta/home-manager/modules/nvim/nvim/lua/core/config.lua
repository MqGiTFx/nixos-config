
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


-- Indent Settings
vim.opt.expandtab = true               -- Превратить все tab в пробелы
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true             -- Копировать отступ на новой строке
vim.opt.cindent = true                 -- Автоотступы
vim.opt.smarttab = true                -- Tab перед строкой вставит shiftwidht количество табов

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

-- Commands
vim.cmd([[
filetype indent plugin on
syntax enable
colorscheme catppuccin-mocha
]])

