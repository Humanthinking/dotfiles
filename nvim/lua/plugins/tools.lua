local function add_unique(list, items)
  local seen = {}

  for _, item in ipairs(list) do
    seen[item] = true
  end

  for _, item in ipairs(items) do
    if not seen[item] then
      table.insert(list, item)
      seen[item] = true
    end
  end
end

return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}

      -- macOS 작업 환경에서 자주 필요한 LSP/formatter/linter 도구
      add_unique(opts.ensure_installed, {
        "basedpyright",
        "clang-format",
        "clangd",
        "prettier",
        "ruff",
        "shellcheck",
        "shfmt",
        "stylua",
      })
    end,
  },
}
