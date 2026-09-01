return {
  {
    "brianhuster/live-preview.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    cmd = { "LivePreview" },
    opts = {
      -- 필요한 경우 여기에 플러그인 자체 옵션을 추가할 수 있습니다.
      port = 5500, -- 기본 포트 번호 설정 (선택 사항)
    },
  },
}
