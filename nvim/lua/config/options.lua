-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
--- ~/.config/nvim/lua/config/options.lua
vim.opt.cursorline = true -- 현재 줄에 하이라이트를 줘서 위치 파악 용이
vim.opt.termguicolors = true -- 24비트 트루컬러 활성화 (이거 안 하면 색이 칙칙해짐)
vim.opt.laststatus = 3 -- 하단 상태바를 하나로 통합해서 깔끔하게 표시
vim.opt.clipboard = "unnamedplus"
vim.opt.encoding = "utf-8" -- UTF-8 인코딩 사용
vim.opt.helplang = "ko" -- 도움말을 한국어 우선으로 표시
vim.opt.ambiwidth = "single" -- 한글/특수문자 폭 문제를 줄이기 위해 ambiwidth를 single로 설정
vim.opt.updatetime = 300 -- CursorHold와 진단 표시 반응 속도 조정
vim.opt.exrc = true
vim.opt.secure = true
