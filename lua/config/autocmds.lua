-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "cpp", "h" },
  callback = function()
    vim.b.autoformat = false
    vim.o.tabstop = 4      -- A TAB character looks like 4 spaces
    vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
    vim.o.softtabstop = 4  -- Number of spaces inserted instead of a TAB character
    vim.o.shiftwidth = 4   -- Number of spaces inserted when indenting
    vim.o.cindent = true
    require 'nvim-treesitter.configs'.setup {
      indent = {
        enable = false
      }
    }
  end,
})
