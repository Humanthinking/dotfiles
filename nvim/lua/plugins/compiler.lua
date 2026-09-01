return {
  {
    "Zeioth/compiler.nvim",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    dependencies = { "stevearc/overseer.nvim", "nvim-telescope/telescope.nvim" },
    opts = {},
  },
  {
    "stevearc/overseer.nvim",
    opts = {
      templates = { "builtin" },
      task_list = {
        direction = "bottom",
        binding = {
          ["<CR>"] = "RunAction", -- 엔터로 세부 결과 확인
          ["q"] = "Close", -- q로 닫기
        },
      },
    },
  },
}
