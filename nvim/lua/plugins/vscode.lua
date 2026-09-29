if not vim.g.vscode then
  return {}
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    pcall(vim.treesitter.stop)
  end,
})

return {
  -- VS Code 자체 LSP 사용
  {
    "neovim/nvim-lspconfig",
    enabled = false,
  },

  -- VS Code 자체 completion 사용
  {
    "saghen/blink.cmp",
    enabled = false,
  },

  -- VS Code formatter 사용
  {
    "stevearc/conform.nvim",
    enabled = false,
  },

  -- VS Code UI를 사용하므로 불필요
  {
    "nvim-lualine/lualine.nvim",
    enabled = false,
  },

  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false },
    },
  },

  -- dashboard
  {
    "nvimdev/dashboard-nvim",
    enabled = false,
  },

  -- Overseer도 VS Code에서는 보통 불필요
  {
    "stevearc/overseer.nvim",
    enabled = false,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    enabled = false,
  },
}

