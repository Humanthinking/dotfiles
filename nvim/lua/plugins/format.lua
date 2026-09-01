return {
  {
    "stevearc/conform.nvim",
    ---@param opts conform.setupOpts
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}

      -- macOS에서 자주 쓰는 언어별 포매터를 명시적으로 지정
      opts.formatters_by_ft.lua = { "stylua" }
      opts.formatters_by_ft.python = { "ruff_format" }
      opts.formatters_by_ft.c = { "clang_format" }
      opts.formatters_by_ft.cpp = { "clang_format" }

      -- Prettier extra가 이미 켜져 있지만, 자주 쓰는 파일 타입은 여기서도 의도를 드러냄
      opts.formatters_by_ft.html = opts.formatters_by_ft.html or { "prettier" }
      opts.formatters_by_ft.json = opts.formatters_by_ft.json or { "prettier" }
      opts.formatters_by_ft.jsonc = opts.formatters_by_ft.jsonc or { "prettier" }
      opts.formatters_by_ft.markdown = opts.formatters_by_ft.markdown or { "prettier" }
      opts.formatters_by_ft.yaml = opts.formatters_by_ft.yaml or { "prettier" }

      opts.default_format_opts = vim.tbl_deep_extend("force", opts.default_format_opts or {}, {
        timeout_ms = 3000,
        lsp_format = "fallback",
      })
    end,
  },
}
