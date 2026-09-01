" ========================
" Basic
" ========================
set nocompatible
syntax on
filetype plugin indent on

set number
set relativenumber
set ruler
set showcmd
set showmatch
set cursorline

" ========================
" Whitespace / Indent
" ========================
set list
set listchars=tab:>>·,trail:·

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" ========================
" Search
" ========================
set hlsearch
set incsearch
set ignorecase
set smartcase

" ESC 두 번으로 검색 highlight 끄기
nnoremap <Esc><Esc> :nohlsearch<CR>

" ========================
" Editing
" ========================
set backspace=indent,eol,start
set nowrap
set history=1000
set mouse=a

" 줄 위/아래 이동 시 화면 여유
set scrolloff=5
set sidescrolloff=5

" ========================
" Files / Undo
" ========================
set nobackup
set nowritebackup
set undofile

" swap은 서버에서 취향
" 장애 복구 필요하면 켜두는 게 안전함
" set noswapfile

" ========================
" Completion / Command line
" ========================
set wildmenu
set wildmode=longest:full,full

" Vim 지원 버전에 따라
set completeopt=menuone,noinsert,noselect

" ========================
" Splits
" ========================
set splitbelow
set splitright

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ========================
" Convenient mappings
" ========================

let mapleader=" "

" 빠른 저장 / 종료
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" 버퍼 이동
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bd :bdelete<CR>

" 파일 열기 - snacks picker 대충 대체
nnoremap <leader>ff :find 
nnoremap <leader>fb :buffers<CR>:buffer<Space>

" grep - snacks grep 대충 대체
nnoremap <leader>fg :grep! 

" netrw left explorer toggle
nnoremap <silent> <leader>e :Lexplore<CR>
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_winsize=25

let g:netrw_browse_split=0
let g:netrw_altv=1
let g:netrw_keepdir=0

" 현재 파일 디렉터리로 이동
nnoremap <leader>cd :lcd %:p:h<CR>:pwd<CR>

" ========================
" Grep
" ========================

" ripgrep 있으면 매우 중요
if executable('rg')
    set grepprg=rg\ --vimgrep\ --smart-case
    set grepformat=%f:%l:%c:%m
elseif executable('grep')
    set grepprg=grep\ -nH\ $*
endif

" ========================
" netrw
" ========================
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=0
let g:netrw_winsize=25

" ========================
" Visual
" ========================
hi MatchParen cterm=bold ctermfg=black ctermbg=yellow
