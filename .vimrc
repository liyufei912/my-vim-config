" ===================== Vim 基础全局配置（编程友好） =====================
set nocompatible              " 禁用 vi 兼容模式
filetype off                  " 关闭文件类型检测（插件加载前）
set background=dark           " 暗黑背景（黑客配色基础）
set number                    " 显示行号
set relativenumber            " 相对行号（方便跳转）
set t_Co=256                  " 256色支持
set termguicolors             " 真彩色渲染（黑客绿更鲜艳）
syntax on                 " 语法高亮（编程核心）
set autoindent                " 自动缩进
set smartindent               " 智能缩进（适配代码）
set tabstop=4                 " Tab 宽度
set shiftwidth=4              " 缩进宽度
set expandtab                 " Tab 转空格
set hlsearch                  " 搜索高亮
set incsearch                 " 实时搜索
set ignorecase                " 搜索忽略大小写
set smartcase                 " 智能大小写（大写时精确匹配）
set mouse=a                   " 鼠标支持（选中/滚动）
set encoding=utf-8            " UTF-8 编码（解决中文乱码）
set fileencodings=utf-8,gbk   " 兼容中文文件
set nobackup nowritebackup noswapfile  " 禁用冗余文件（避免编程时干扰）
set cursorline                " 光标行高亮（编程定位）
set guifont=MesloLGS\ NF:h12  " Nerd Font（解决插件图标乱码）
set ambiwidth=double          " 全角字符正常显示

" ===================== Vim-Plug 插件配置（编程常用） =====================
call plug#begin('~/.vim/plugged')

" 1. 代码补全（编程核心）
Plug 'vim-scripts/auto-pairs'          " 自动补全括号/引号
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " 智能代码补全（支持LSP）

" 2. 文件/导航（编程效率）
Plug 'preservim/nerdtree'              " 文件树侧边栏（F2 开关）
Plug 'tpope/vim-surround'              " 快速包裹/修改括号/引号
Plug 'easymotion/vim-easymotion'       " 快速跳转（<leader>s 触发）

" 3. Git 集成（协作编程）
Plug 'airblade/vim-gitgutter'          " 行级 Git 变更提示
Plug 'tpope/vim-fugitive'              " Git 命令集成

" 4. 编辑增强（编程便捷）
Plug 'tpope/vim-commentary'            " 快速注释（gcc 单行/ gc 块）
Plug 'michaeljsmith/vim-indent-object' " 缩进块选择
Plug 'vim-airline/vim-airline'         " 高颜值状态栏（适配黑客配色）
Plug 'vim-airline/vim-airline-themes'  " 状态栏主题

call plug#end()
filetype plugin indent on            " 开启文件类型检测

" ===================== 插件快捷键配置（编程专属） =====================
" NerdTree 文件树（F2 开关，编程快速找文件）
map <F2> :NERDTreeToggle<CR>
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" 代码注释（编程快速注释）
nmap <leader>cc :Commentary<CR>
vmap <leader>cc :Commentary<CR>

" EasyMotion 快速跳转（编程定位代码）
let g:EasyMotion_smartcase = 1
nmap <leader>s <Plug>(easymotion-s2)

" Airline 状态栏（适配黑客配色）
let g:airline_theme = 'simple'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" ===================== 黑客编程专属配色（适配代码语法） =====================
" 基础：纯黑背景 + 冷调荧光绿（编程长时间不疲劳）

" 编程语法分层（清晰识别代码结构）

" 编程界面元素（适配插件）
" ===================== 黑客编程配色（绿蓝搭配版） =====================
set background=dark
set t_Co=256
set termguicolors

" 基础层：纯黑背景 + 荧光绿主文字（黑客核心）

" 编程语法层：绿+蓝分层（核心高亮用科技蓝）

" 界面元素层：绿蓝呼应（适配插件）
" Airline 状态栏（绿蓝搭配）
" ===================== 绿蓝黑客配色（层次丰富版） =====================
set background=dark
set t_Co=256
set termguicolors

" 基础层：极黑背景 + 主色调（深绿+深海蓝，视觉基底）

" 🔵 注释层：浅绿+斜体+低饱和度（最弱层级，不干扰）

" 🟦 关键字层：亮蓝+下划线+粗体（核心层级，最醒目）

" 🟩 函数层：荧光绿+粗体（重要层级，仅次于关键字）

" 🟢+🔵 字符串层：反色渐变（最高对比，易识别）

" 界面层：绿蓝渐变呼应（适配插件，层次统一）

" Git 层：绿蓝红渐变（变更层级清晰）

" 文件树层：绿蓝分层（导航清晰）

" 状态栏：绿蓝渐变（层次统一）
" ===================== 黑客酷炫配色（绿蓝紫棕白撞色版） =====================
set background=dark
set t_Co=256
set termguicolors

" 基础层：极黑背景（撞色基底，突出多彩高亮）
highlight Normal        ctermfg=15  ctermbg=232   guifg=#ffffff  guibg=#000000 " 主文字：纯白（基础层，对比所有撞色）
highlight NormalNC      ctermfg=247 ctermbg=232   guifg=#bbbbbb  guibg=#000000 " 非活动窗：浅灰（区分层级）

" 🟢 注释层：荧光绿+斜体（基础层级，不抢焦点）
highlight Comment       ctermfg=10  ctermbg=232   guifg=#00ff00  guibg=#000000 cterm=italic gui=italic " 普通注释：荧光绿+斜体
highlight SpecialComment ctermfg=11  ctermbg=232  guifg=#33ff33  guibg=#000000 cterm=italic " 特殊注释：浅绿+斜体（区分）

" 🔵 关键字层：科技蓝+粗体+下划线（核心层级，最醒目）
highlight Keyword       ctermfg=75  ctermbg=232   guifg=#00bfff  guibg=#000000 cterm=bold,underline gui=bold,underline " 核心关键字：亮蓝+粗体+下划线
highlight Type          ctermfg=69  ctermbg=232   guifg=#0080ff  guibg=#000000 cterm=underline gui=underline " 类型关键字：深蓝+仅下划线（次核心）

" 🟣 函数层：霓虹紫+粗体（重要层级，仅次于关键字）
highlight Function      ctermfg=135 ctermbg=232   guifg=#9d00ff  guibg=#000000 cterm=bold gui=bold " 函数名：霓虹紫+粗体
highlight Identifier    ctermfg=129 ctermbg=232   guifg=#8a2be2  guibg=#000000 " 变量/标识符：浅紫（辅助层级）

" 🟤 字符串层：复古棕+反色（高对比层级，易识别）
highlight String        ctermfg=0   ctermbg=130   guifg=#000000  guibg=#cd853f  " 普通字符串：棕底黑字（高对比）
highlight Character     ctermfg=0   ctermbg=172   guifg=#000000  guibg=#d2691e  " 字符常量：深棕底黑字（区分字符串）

" ⚪ 常量/运算符层：纯白+粗体/浅灰（补充层级）
highlight Constant      ctermfg=15  ctermbg=232   guifg=#ffffff  guibg=#000000 cterm=bold " 数值常量：纯白+粗体（醒目）
highlight Operator      ctermfg=247 ctermbg=232   guifg=#bbbbbb  guibg=#000000 " 运算符：浅灰（辅助层级，不抢焦点）

" 界面层：撞色呼应（适配插件，视觉统一）
highlight LineNr        ctermfg=10  ctermbg=232   guifg=#00ff00  guibg=#000000 " 行号：荧光绿（呼应注释）
highlight CursorLineNr  ctermfg=75  ctermbg=232   guifg=#00bfff  guibg=#000000 cterm=bold " 光标行号：亮蓝+粗体（呼应关键字）
highlight CursorLine    ctermbg=233 ctermfg=135   guibg=#0a0a0a  guifg=#9d00ff " 光标行：浅黑底+霓虹紫（呼应函数）
highlight Search        ctermfg=0   ctermbg=15    guifg=#000000  guibg=#ffffff " 搜索：白底黑字（最高对比）

" Git 层：撞色区分变更（适配协作编程）
highlight GitGutterAdd  ctermfg=10  ctermbg=232   guifg=#00ff00  guibg=#000000 " 新增：荧光绿（呼应注释）
highlight GitGutterChange ctermfg=75 ctermbg=232  guifg=#00bfff  guibg=#000000 " 修改：亮蓝（呼应关键字）
highlight GitGutterDelete ctermfg=196 ctermbg=232 guifg=#ff0000  guibg=#000000 " 删除：红（警示层级）

" 文件树层：撞色分层（导航清晰）
highlight NERDTreeDir   ctermfg=135 ctermbg=232   guifg=#9d00ff  guibg=#000000 cterm=bold " 目录：霓虹紫+粗体（呼应函数）
highlight NERDTreeFile  ctermfg=130 ctermbg=232   guifg=#cd853f  guibg=#000000 " 文件：复古棕（呼应字符串）
highlight NERDTreeExecFile ctermfg=15 ctermbg=232 guifg=#ffffff guibg=#000000 cterm=bold " 可执行文件：纯白+粗体（呼应常量）

" 状态栏：撞色渐变（绿+蓝+紫，层次统一）
let g:airline#themes#simple#palette#normal#airline_a = ['green', 'black', 10, 0]
let g:airline#themes#simple#palette#normal#airline_b = ['blue', 'black', 75, 0]
let g:airline#themes#simple#palette#normal#airline_c = ['magenta', 'black', 135, 0]
