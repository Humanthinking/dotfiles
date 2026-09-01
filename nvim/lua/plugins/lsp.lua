return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
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
