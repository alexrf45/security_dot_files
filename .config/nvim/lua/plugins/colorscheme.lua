-- return {
--   "tiagovla/tokyodark.nvim",
--   opts = {
--     transparent_background = "true",
--     terminal_colors = true,
--   },
--   config = function(_, opts)
--     require("tokyodark").setup(opts) -- calling setup is optional
--     vim.cmd([[colorscheme tokyodark]])
--   end,
-- }

return {
  "rebelot/kanagawa.nvim",
  opts = {
    transparent_background = "true",
    terminal_colors = true,
  },
  config = function(_, opts)
    require("kanagawa").setup(opts) -- calling setup is optional
    vim.cmd([[colorscheme kanagawa-dragon]])
  end,
}

-- return {
--   "Mofiqul/dracula.nvim",
--   opts = {
--     transparent_background = "true",
--     terminal_colors = true,
--   },
--   config = function(_, opts)
--     require("dracula").setup(opts) -- calling setup is optional
--     vim.cmd([[colorscheme dracula]])
--   end,
-- }
