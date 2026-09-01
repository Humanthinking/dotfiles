return {
  {
    "hrsh7th/nvim-insx",
    config = function()
      require("insx.preset.standard").setup()
      -- 특정 조건에서 세미콜론을 자동으로 찍는 등의 복잡한 규칙을 추가할 수 있습니다.
    end,
  },
}
