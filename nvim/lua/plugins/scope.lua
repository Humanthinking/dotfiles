return {
  {
    "nvim-telescope/telescope.nvim",
    keys = function()
      local builtin = require("telescope.builtin")

      return {
        { "gr", builtin.lsp_references, desc = "Cscope: find s (references)" },
        { "gd", builtin.lsp_definitions, desc = "Cscope: find g (definition)" },
        { "gi", builtin.lsp_implementations, desc = "Cscope: find i (implementation)" },
        { "<leader>gc", builtin.lsp_incoming_calls, desc = "Cscope: find c (callers)" },
      }
    end,
  },
}
