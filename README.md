# Dotfiles

개인 개발 환경을 위한 설정 모음입니다. LazyVim 기반 Neovim, tmux, Vim 설정을 관리합니다.

## 구성

```text
.
├── nvim/                  # Neovim 설정 디렉터리
│   ├── init.lua
│   ├── .neoconf.json       # Lua 개발 환경 설정
│   └── lua/
│       ├── config/        # 옵션, 키맵, 자동 명령, lazy.nvim 부트스트랩
│       └── plugins/       # LazyVim 플러그인 오버라이드 및 추가 설정
├── tmux/
│   └── .tmux.conf          # tmux 설정
├── vim/
│   └── .vimrc              # 독립 Vim 설정
└── README.md
```

## Neovim 설정

LazyVim과 `lazy.nvim`을 기반으로 동작합니다. 처음 실행하면 `lazy.nvim`과 필요한 플러그인이 자동으로 설치됩니다.

### 요구 사항

- Neovim 0.10 이상
- Git
- Nerd Font (아이콘 표시용)
- C/C++ 작업용: `gcc` 또는 `clang`, `clangd`, `clang-format`
- 언어별 실행 환경: Python 3, Node.js, Lua, Bash 등 필요한 것만 설치

Formatter와 LSP 도구(`basedpyright`, `ruff`, `prettier`, `stylua` 등)는 Mason이 자동 설치 대상으로 관리합니다. Neovim에서 `:Mason`으로 설치 상태를 확인할 수 있습니다.

### 설치

저장소를 원하는 위치에 내려받은 뒤, Neovim 설정 경로에 심볼릭 링크를 만듭니다.

```bash
git clone git@github.com:Humanthinking/dotfiles.git ~/dotfiles
ln -s ~/dotfiles/nvim ~/.config/nvim
```

이미 `~/.config/nvim`이 있다면 먼저 백업하거나 제거한 뒤 링크를 만드세요. 이후 `nvim`을 실행하면 플러그인 설치가 시작됩니다.

### 주요 기능

- TokyoNight 투명 테마와 가독성 위주의 UI 조정
- Snacks Explorer, Telescope 기반 탐색 및 LSP 탐색
- Mason을 통한 LSP·formatter 관리
- Python, C/C++, Lua, 웹 문서 포맷팅
- Copilot 및 CodeCompanion 기반 AI 보조
- LazyGit, Flog를 통한 Git 작업
- Markdown 줄바꿈·표시 최적화와 진단 플로팅 창
- 현재 파일을 터미널에서 바로 실행하는 간단한 러너

### 사용자 키맵

`<leader>`는 LazyVim 기본값인 `Space`입니다.

| 키                    | 동작                                                                |
| --------------------- | ------------------------------------------------------------------- |
| `Space e`             | 현재 파일 디렉터리를 Snacks Explorer로 열기                         |
| `Space h`             | Snacks 대시보드 열기                                                |
| `Space r`             | 현재 파일 실행 (Python, JavaScript, TypeScript, Lua, Shell, C, C++) |
| `Space c R`           | 현재 C 파일을 `./output/`에 컴파일하고 실행                         |
| `Space g g`           | LazyGit 열기                                                        |
| `Space a a`           | CodeCompanion 액션 메뉴                                             |
| `Space a c`           | CodeCompanion 채팅 토글                                             |
| `Space a n`           | 새 CodeCompanion 채팅                                               |
| `Space a e`           | 선택 영역 또는 현재 위치에 AI 인라인 편집                           |
| `g d` / `g r` / `g i` | LSP 정의 / 참조 / 구현으로 이동                                     |
| `Space g c`           | LSP 호출자 찾기                                                     |
| `Alt l`               | Copilot 제안 수락                                                   |
| Insert 모드 `->`      | `→` 입력                                                            |

### 자주 쓰는 명령

| 명령           | 용도                                  |
| -------------- | ------------------------------------- |
| `:Lazy`        | 플러그인 설치·업데이트·상태 확인      |
| `:Mason`       | LSP, formatter, linter 설치 상태 확인 |
| `:LspInfo`     | 현재 버퍼의 LSP 상태 확인             |
| `:ConformInfo` | 현재 버퍼의 formatter 확인            |
| `:LivePreview` | HTML 등의 라이브 미리보기 시작        |
| `:Flog`        | Git 로그 보기                         |

## tmux 설정

기본 tmux 사용성을 유지하면서 Vim 스타일 복사 모드와 클립보드 연동을 설정합니다.

- 복사 모드 키: `vi`
- `Escape` 지연: `0ms`
- 터미널: `tmux-256color` 및 True Color 활성화
- 클립보드: OSC 52 연동 활성화

### 설치

```bash
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf
```

## Vim 설정

플러그인 없이도 사용할 수 있는 독립 Vim 설정입니다. 줄 번호, 들여쓰기, 검색, 창 분할, netrw 파일 탐색기, `ripgrep` 기반 검색을 설정합니다.

### 설치

```bash
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
```

### 주요 키맵

`<leader>`는 `Space`입니다.

| 키                                      | 동작                                        |
| --------------------------------------- | ------------------------------------------- |
| `Space w` / `Space q`                   | 저장 / 종료                                 |
| `Space b n` / `Space b p` / `Space b d` | 다음 버퍼 / 이전 버퍼 / 버퍼 닫기           |
| `Space e`                               | netrw 탐색기 열기                           |
| `Space f f`                             | 파일 열기                                   |
| `Space f g`                             | grep 명령 시작 (`rg`가 있으면 ripgrep 사용) |
| `Space c d`                             | 현재 파일의 디렉터리로 이동                 |
| `Ctrl-h/j/k/l`                          | 분할 창 사이 이동                           |
| `Esc Esc`                               | 검색 하이라이트 끄기                        |

## 라이선스

Neovim 설정은 [MIT License](nvim/LICENSE)를 따릅니다.
