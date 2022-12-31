local M = {
  "lukas-reineke/indent-blankline.nvim",
  event = "BufReadPre",
}

function M.config()

  vim.opt.termguicolors = true
  --vim.cmd [[highlight IndentBlanklineIndent1 guibg=#1f1f1f gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent1 guibg=#171719 ]]
  --vim.cmd [[highlight IndentBlanklineIndent2 guibg=#1a1a1a gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent2 guibg=NONE gui=NONE]]
  
  require("indent_blankline").setup({
      char = "",
      char_highlight_list = {
          "IndentBlanklineIndent1",
          "IndentBlanklineIndent2",
      },
      space_char_highlight_list = {
          "IndentBlanklineIndent1",
          "IndentBlanklineIndent2",
      },
      show_trailing_blankline_indent = false,
      show_current_context = true,
      --show_current_context_start = true,
  })

  --require("indent-blankline").setup {
  --  buftype_exclude = { "terminal", "nofile" },
  --  filetype_exclude = {
  --    "help",
  --    "startify",
  --    "dashboard",
  --    "packer",
  --    "neogitstatus",
  --    "NvimTree",
  --    "neo-tree",
  --    "Trouble",
  --  },
  --  char = "▏",
  --  use_treesitter_scope = false,
  --  show_trailing_blankline_indent = false,
  --  show_current_context = true,
  --  context_patterns = {
  --    "class",
  --    "return",
  --    "function",
  --    "method",
  --    "^if",
  --    "^while",
  --    "jsx_element",
  --    "^for",
  --    "^object",
  --    "^table",
  --    "block",
  --    "arguments",
  --    "if_statement",
  --    "else_clause",
  --    "jsx_element",
  --    "jsx_self_closing_element",
  --    "try_statement",
  --    "catch_clause",
  --    "import_statement",
  --    "operation_type",
  --  },
  --},
end

return M


