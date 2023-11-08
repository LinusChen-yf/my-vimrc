" 基本配置
set nocompatible
filetype indent on
" 显示行号
set number
" 语法高亮
syntax on
" 右下角显示未输入完的命令
set showcmd
" tap 补全菜单
set wildmenu
" 高亮语法搜索
set hlsearch
" 边输入边高亮
set incsearch
" 使用鼠标
set mouse=a
" 代码折叠
set foldmethod=indent
" 共享剪切板
set clipboard=unnamedplus

" 忽略搜索大小写
" set ignorecase

" 打开新文件取消高亮搜索
exec "nohlsearch"
" 光标在上次位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 映射快捷键
noremap J 5j
noremap K 5k

