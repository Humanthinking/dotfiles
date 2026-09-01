return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_colors = function(colors)
        colors.bg = "none"
        colors.fg = "#ffffff" -- 기본 텍스트 순백색
        colors.cyan = "#7df9ff" -- 쨍한 사이안
        colors.magenta = "#ff00ff" -- 쨍한 핑크
        colors.yellow = "#ffdf00" -- 진한 노랑
      end,
      on_highlights = function(hl, c)
        -- 1. 줄 번호: 투명 배경에서는 '무조건' 두꺼워야 보입니다.
        hl.LineNr = { fg = "#737aa2", bold = true } -- 상대 줄 번호 기준색
        hl.CursorLineNr = { fg = "#ff00ff", bold = true } -- 현재 줄 (핫핑크)
        hl.LineNrAbove = { fg = "#939ab7", bold = true } -- 위쪽 번호 (색상을 한 단계 더 밝게)
        hl.LineNrBelow = { fg = "#939ab7", bold = true } -- 아래쪽 번호 (색상을 한 단계 더 밝게)

        -- 2. Snacks Explorer (Picker 기반이므로 정확한 인자명은 SnacksPicker* 입니다)
        hl.SnacksPickerDir = { fg = "#7aa2f7", bold = true } -- 폴더명
        hl.SnacksPickerFile = { fg = "#ffffff" } -- 일반 파일명

        -- 숨김 파일(.dotfile)과 무시된 파일(.gitignore) 타협안
        hl.SnacksPickerPathHidden = { fg = "#a9b1d6", italic = true }
        hl.SnacksPickerPathIgnored = { fg = "#737aa2", italic = true }

        -- (보너스) Git에 새로 추가되어서 추적 안 되는 파일들
        hl.SnacksPickerGitStatusUntracked = { fg = "#a9b1d6", italic = true } -- 4. 기타 UI 보정
        hl.MsgArea = { fg = "#ffffff" } -- 명령어 입력창 글자색
        hl.Folded = { bg = "none", fg = "#7aa2f7" } -- 코드 접힌 부분 가독성

        hl.Comment = { fg = "#9aa5ce", italic = true }
      end,
    })

    -- 설정을 마친 후 테마를 로드합니다.
    vim.cmd([[colorscheme tokyonight]])
  end,
}
