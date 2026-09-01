-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local markdown_group = vim.api.nvim_create_augroup("user_markdown_notion", { clear = true })
local diagnostic_group = vim.api.nvim_create_augroup("user_diagnostic_float", { clear = true })

-- Markdown / Notion에 붙여넣기 좋도록 줄바꿈과 포맷 옵션 조정
vim.api.nvim_create_autocmd("FileType", {
  group = markdown_group,
  pattern = "markdown",
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    vim.opt_local.conceallevel = 2
    vim.opt_local.spell = false
    vim.opt_local.textwidth = 0
    vim.opt_local.formatoptions:remove({ "t" })
  end,
})

-- 커서가 멈췄을 때 현재 위치의 진단 메시지를 둥근 테두리 플로팅 창으로 표시
vim.api.nvim_create_autocmd("CursorHold", {
  group = diagnostic_group,
  callback = function()
    vim.diagnostic.open_float(nil, {
      focus = false,
      border = "rounded",
      source = "always",
    })
  end,
})
