local use_dev = true

if use_dev then
  -- use the local project
  --vim.opt.runtimepath:prepend(vim.fn.expand("~/.config/nvim/lazy.nvim"))
  vim.opt.runtimepath:prepend(vim.fn.stdpath("config") .. "/lazy.nvim")
else
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath })
    vim.fn.system({ "git", "-C", lazypath, "checkout", "tags/stable" }) -- last stable release
  end
  vim.opt.rtp:prepend(lazypath)
end

require("lazy").setup("config.plugins", {
  -- root = vim.fn.stdpath("data") .. "/lazy", -- directory where plugins will be installed
  defaults = {
      lazy = true,
      version = "*", -- try installing the latest stable versions of plugins
  },
  git = {
    -- defaults for the `Lazy log` command
    -- log = { "-10" }, -- show the last 10 commits
    log = { "--since=3 days ago" }, -- show commits from the last 3 days
    timeout = 90, -- kill processes that take more than 2 minutes
    url_format = "https://github.com/%s.git",
  },
  dev = {
      path = "/xhome/env.neovim.code/nvim.d/", -- your local plugin projects
      patterns = {}, -- jit.os:find("Windows") and {} or { "folke" }, -- plugins that match these patterns will use your local versions
  },
  install = {
      missing = true, -- install missing plugins on startup
      colorscheme = { "gruvbox", "onenord", "tokyonight", "habamax" },
  },
  checker = {
    enabled = true, -- automatically check for plugin updates
    notify = true,
    frequency = 300, -- 3600, check for updates every hour
  },
  diff = {
    cmd = "terminal_git",
  },
  performance = {
    cache = {
      enabled = true,
      -- disable_events = {},
    },
    rtp = {
      paths = { }, -- runtime path, $VIMRUNTIME 
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
        "nvim-treesitter-textobjects",
      },
    },
  },
  ui = {
    custom_keys = {

      ["<localleader>d"] = function(plugin)
        dd(plugin)
      end,
    },
  },
  debug = true,
})
vim.keymap.set("n", "<leader>l", "<cmd>:Lazy<cr>")
