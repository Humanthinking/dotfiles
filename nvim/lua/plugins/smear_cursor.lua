return {
  "sphamba/smear-cursor.nvim",
  opts = {
    time_interval = 8,

    -- 원래 옵션(0.8)보다는 유연하지만 멈출 땐 빠르게 타겟에 붙도록 설정
    stiffness = 0.8,
    stiffness_insert_mode = 0.65,

    -- 꼬리가 충분히 멀리 늘어날 수 있도록 유연함을 줍니다.
    trailing_stiffness = 0.4,
    trailing_stiffness_insert_mode = 0.4,

    -- 브레이크(댐핑)를 원래 옵션(0.95)에 가깝게 높여서 멈췄을 때 잔상이 즉시 흡수되게 합니다.
    damping = 0.9,
    damping_insert_mode = 0.88,

    -- [★핵심] 지수(Exponent)들을 낮춰 꼬리 뒤쪽이 아주 흐릿하고 투명하게 그라데이션 되도록 만듭니다.
    trailing_exponent = 1.5, -- 값이 낮을수록 꼬리 끝이 부드럽고 투명하게 뭉개집니다. (기본값 가이드 5)
    gamma = 0.6, -- 감마 값을 낮추면 잔상 컬러가 흐릿하고 자연스럽게 페이드아웃 됩니다.

    -- 미세 잔상 찌꺼기가 남지 않게 원래 옵션처럼 칼같이 컷트합니다.
    distance_stop_animating = 0.4,
    scroll_buffer_space = true,

    smear_between_buffers = false,
    smear_between_neighbor_lines = true,

    legacy_computing_symbols_support = false,
    smear_insert_mode = true,

    never_draw_over_target = true,
    hide_target_hack = false,
    distance_stop_animating_vertical_bar = 0.875,
  },
}
