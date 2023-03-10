local M = {
  "morhetz/gruvbox",
  lazy = false,
  priority = 999,
}

function M.config()
  --local colors = require("onenord.colors").load()
  vim.o.background = "dark"
  --require("gruvbox") .setup({
    --  theme = nil, -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
    --  borders = false,--borders = true, -- Split window borders
    --  fade_nc = false, -- Fade non-current windows, making them more distinguishable
    --  -- Style that is applied to various groups: see `highlight-args` for options
    --  styles = {
    --    --comments = "NONE", strings = "NONE", keywords = "NONE", functions = "NONE", variables = "NONE", diagnostics = "underline",
    --  },
    --  --disable = {
    --  --  background = false, -- Disable setting the background color
    --  --  cursorline = false, -- Disable the cursorline
    --  --  eob_lines = true, -- Hide the end-of-buffer lines
    --  --},
    --  -- Inverse highlight for different groups
    --  inverse = {
    --    match_paren = false,
    --  },

    --  custom_highlights = {
    --    -- Overwrite default highlight groups
    --    --TSConstructor = { fg = colors.dark_blue },
    --    Function = { fg = colors.blue },
    --    Delimiter = { fg = colors.cyan },
    --  },
    --  custom_colors = {
    --    -- Overwrite default colors
    --    --red = "#ffffff",
    --  },
  --})
  --tokyonight.load()
    vim.cmd([[ colorscheme gruvbox ]])
end

return M
