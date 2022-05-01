set number " 显示行号
syntax on " 语法高亮
set autoindent " 自动缩进
set hlsearch " 搜索高亮
set linebreak " 单词换行
set ttimeoutlen=40 " 超时时间

set tabstop=4 " 制表符
set shiftwidth=4 " 空格级别
set laststatus=2 " 状态栏高度

" 隐藏字符设置
set encoding=utf-8
scriptencoding utf-8
set list
set listchars=tab:»·,trail:·,eol:¬

" 颜色显示设置
set cursorline
highlight cursorline cterm=none ctermbg=234
highlight cursorlinenr cterm=none ctermbg=234
highlight visual cterm=none ctermbg=darkgray
highlight nontext cterm=none ctermfg=darkgray
highlight specialkey cterm=none ctermfg=darkgray
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
