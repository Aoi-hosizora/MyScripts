set number " 显示行号
syntax on " 语法高亮
set autoindent " 自动缩进
set hlsearch " 搜索高亮
set linebreak " 单词换行

set tabstop=4 " 制表符
set shiftwidth=4 " 空格级别
set laststatus=2 " 状态栏高度

set list " 显示隐藏字符
set listchars=tab:▸\ ,eol:¬ " 设置隐藏字符
scriptencoding utf-8 " 特殊字符在 git 中的支持

" 设置当前行高亮
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234 " 高亮颜色
