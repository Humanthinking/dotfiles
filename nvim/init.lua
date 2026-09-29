-- ~/.config/nvim/init.lua
if vim.g.vscode then
  vim.treesitter.start = function() end
  vim.treesitter.get_parser = function()
    return nil
  end
end

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.lazy")

