local M = {
  "vuki656/package-info.nvim",
  event = "BufReadPost",
}

function M.config()
  local constants = require("package-info.utils.constants")
  require('package-info').setup({
    package_manager = constants.PACKAGE_MANAGERS.pnpm,
  })
  --local cmd = require('cmp')
  --vim.api.nvim_create_autocmd("BufRead", {
  --    group = vim.api.nvim_create_augroup("CmpSourceCargo", { clear = true }),
  --    pattern = "Cargo.toml",
  --    callback = function()
  --        cmp.setup.buffer({ sources = { { name = "crates" } } })
  --    end,
  --})

  --local null_ls = require('null-ls')
  --require('crates').setup {
  --    null_ls = {
  --        enabled = true,
  --        name = "crates.nvim",
  --    },
  --}
  --

    --vim.api.nvim_create_autocmd("FileType", {
    --  pattern = "Cargo.toml",
    --  callback = function(event)
    --    vim.schedule(function()
    --      cmp.setup.buffer({ sources = { { name = "crates" } } })
    --    end)
    --  end,
    --})
end
return M

