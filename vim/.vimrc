set number
syntax on

set autoindent
set cindent

set tabstop=4
set softtabstop=4
set shiftwidth=4

set noexpandtab
set smarttab

set ignorecase
set hlsearch
set incsearch

set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:    %M\")}
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
set laststatus=2
set cmdheight=1