set number "行号
syntax on "高亮
set autoindent "缩进
set hlsearch "搜索高亮
set linebreak "单词换行

set tabstop=4 "制表符
set shiftwidth=4 "空格
set laststatus=2 "状态栏高度

scriptencoding utf-8 "特殊字符在 git 中的支持
set encoding=utf-8
set list "隐藏字符
set listchars=tab:▸\ ,eol:¬ "隐藏字符设置

set cursorline "高亮当前行
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234 "设置高亮颜色

"==================== airline ====================
set ttimeoutlen=50
let g:airline_theme='powerlineish'
"set guifont=DejaVu\ Sans\ Mono "DejaVu Sans Mono
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_idx_mode=1
let g:airline#extensions#branch#enabled=1
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab
