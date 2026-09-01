return {
  {
    "nvim-mini/mini.surround",
    optional = true,
    opts = {
      -- `MiniSurround.highlight()` 호출 시 하이라이트가 유지되는 시간(ms)
      highlight_duration = 500,

      -- 주변 문자 추가/삭제/검색/교체에 사용할 매핑
      mappings = {
        add = "sa", -- Normal/Visual 모드에서 surrounding 추가
        delete = "sd", -- surrounding 삭제
        find = "sf", -- 오른쪽 방향으로 surrounding 검색
        find_left = "sF", -- 왼쪽 방향으로 surrounding 검색
        highlight = "sh", -- surrounding 하이라이트
        replace = "sr", -- surrounding 교체

        suffix_last = "l", -- 이전 항목 검색에 사용할 접미사
        suffix_next = "n", -- 다음 항목 검색에 사용할 접미사
      },

      n_lines = 20, -- surrounding을 검색할 줄 범위
      respect_selection_type = false, -- linewise/blockwise 선택 타입을 별도로 반영하지 않음
      search_method = "cover", -- 현재 위치를 감싸는 surrounding을 우선 검색
      silent = false, -- 오류가 아닌 안내 메시지도 표시
    },
  },
}
