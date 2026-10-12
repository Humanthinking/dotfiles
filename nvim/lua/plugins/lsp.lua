return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- 모든 LSP에 적용할 키맵
        ["*"] = {
          keys = {
            {
              "<leader>ss",
              function()
                Snacks.picker.lsp_symbols({
                  filter = { default = true },
                })
              end,
              desc = "LSP Symbols (All)",
              has = "documentSymbol",
            },
          },
        },
        -- C/C++
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style={ BasedOnStyle: LLVM, SortIncludes: Never }",
          },
        },

        -- Python 타입 체커 / LSP
        basedpyright = {
          settings = {
            python = {
              -- python_conda 환경의 Python 경로
              pythonPath = "/opt/homebrew/Caskroom/miniconda/base/envs/python_conda/bin/python3",
            },
            basedpyright = {
              analysis = {
                typeCheckingMode = "basic",
                diagnosticMode = "openFilesOnly",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
              },
            },
          },
        },

        -- Python 린터 / 포매터 LSP
        ruff = {},
      },
    },
  },
}
