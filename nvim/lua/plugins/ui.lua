return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "moon",
      transparent = true,

      styles = {
        sidebars = "transparent",
        floats = "transparent",
        comments = { italic = true },
      },

      on_colors = function(c)
        -- 파스텔 팔레트
        c.fg = "#c8d3f5"
        c.blue = "#82aaff"
        c.cyan = "#86e1fc"
        c.magenta = "#c099ff"
        c.yellow = "#ffc777"
        c.green = "#c3e88d"
        c.red = "#ff757f"
        c.purple = "#b4a0ff"
      end,

      on_highlights = function(hl, c)
        -- 줄 번호
        hl.LineNr = { fg = "#777f9e" }
        hl.CursorLineNr = {
          fg = "#c099ff",
          bold = true,
        }
        hl.LineNrAbove = { fg = "#8b93b9" }
        hl.LineNrBelow = { fg = "#8b93b9" }

        -- Snacks Explorer
        hl.SnacksPickerDir = {
          fg = "#82aaff",
          bold = true,
        }

        hl.SnacksPickerFile = {
          fg = "#c8d3f5",
        }

        hl.SnacksPickerPathHidden = {
          fg = "#969ec5",
          italic = true,
        }

        hl.SnacksPickerPathIgnored = {
          fg = "#777f9e",
          italic = true,
        }

        hl.SnacksPickerGitStatusUntracked = {
          fg = "#a6b4d8",
          italic = true,
        }

        -- UI
        hl.MsgArea = { fg = "#c8d3f5" }

        hl.Folded = {
          bg = "NONE",
          fg = "#82aaff",
        }

        -- 주석
        hl.Comment = {
          fg = "#969ec5",
          italic = true,
        }

        -- 선택 영역
        hl.Visual = {
          bg = "#414868",
        }
      end,
    })

    vim.cmd.colorscheme("tokyonight")
  end,
}
