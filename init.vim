" 基本配置
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
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

call plug#begin("~/.vim/plugged")

" 状态栏
Plug 'vim-airline/vim-airline'

" 主题
Plug 'connorholyday/vim-snazzy'

" 目录树
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" 代码补全
" Plug 'ycm-core/YouCompleteMe'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-pyclang'

" 错误提示
Plug 'dense-analysis/ale'

" 函数列表
Plug 'preservim/tagbar'

" 文件历史记录
Plug 'mbbill/undotree'

" markdown
Plug 'iamcco/markdown-preview.nvim'

call plug#end()

" Plug config

" === snazzy
color snazzy

" === NERDTREE
map tt : NERDTreeToggle<CR>

" === ncm2
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

" ale
let g:ale_set_highlights = 0


