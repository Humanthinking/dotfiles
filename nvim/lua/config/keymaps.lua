vim.keymap.set("n", "<leader>cR", function()
  local source = vim.fn.expand("%:p") -- 현재 파일의 전체 경로
  local output_dir = vim.fn.expand("%:p:h") .. "/output" -- output 폴더 경로 생성
  local binary = output_dir .. "/" .. vim.fn.expand("%:t:r") -- 확장자를 제외한 실행 파일 경로

  vim.cmd("w") -- 저장
  vim.fn.mkdir(output_dir, "p") -- output 폴더가 없으면 생성

  -- gcc로 컴파일한 뒤 성공하면 output 폴더 안의 바이너리를 실행
  vim.system({ "gcc", source, "-o", binary }, { text = true }, function(result)
    vim.schedule(function()
      if result.code ~= 0 then
        vim.notify(result.stderr, vim.log.levels.ERROR)
        return
      end

      vim.cmd("split")
      vim.fn.termopen({ binary })
      vim.cmd("startinsert")
    end)
  end)
end, { desc = "Run C file and save binary in ./output/" })

-- 화살표
vim.keymap.set("i", "->", "→", { noremap = true, silent = true })

-- space + h 로 바로 초기화면
vim.keymap.set("n", "<leader>h", function()
  Snacks.dashboard.open()
end, { desc = "Go to Dashboard" })

-- Overseer 키셋팅 : space + r 로 code run
vim.keymap.set("n", "<leader>r", function()
  local file = vim.fn.expand("%")
  local ft = vim.bo.filetype

  local cmd = {
    python = "python3 " .. file,
    javascript = "node " .. file,
    typescript = "npx tsx " .. file,
    lua = "lua " .. file,
    sh = "bash " .. file,
    cpp = "g++ " .. file .. " -o /tmp/a.out && /tmp/a.out",
    c = "gcc " .. file .. " -o /tmp/a.out && /tmp/a.out",
  }

  if cmd[ft] then
    Snacks.terminal(cmd[ft])
  else
    vim.notify("No runner for filetype: " .. ft)
  end
end, { desc = "Run current file" })
