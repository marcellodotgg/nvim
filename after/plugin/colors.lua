function ColorMyPencils(color)
    color = color or "tokyonight"
    vim.g.tokyonight_style = "night"
    vim.g.tokyonight_transparent = false
    vim.g.tokyonight_italic_functions = true
    vim.cmd.colorscheme(color)
end

ColorMyPencils()
