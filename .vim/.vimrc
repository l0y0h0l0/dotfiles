set nocompatible
set hidden
filetype off" 开启文件类型检测 
filetype plugin on 
filetype indent on
set showtabline=0
set autowriteall
set autoread
set hlsearch
set modifiable
set nobackup
set noswapfile
set noshowmode



"设置快捷键前缀
let mapleader=";"
"让配置修改完成自动生效"
"修改配置的时候可能导致airline背景颜色消失
"-------------VIM设置区--------------------
"开启实时搜索"
set incsearch 
"搜索时大小写不敏感"
set ignorecase
" 关闭兼容模式
set backspace=2
"vim自身命令行模式智能补全
set wildmenu
"总是显示状态栏
set laststatus=2
"显示光标当前位置 
set ruler
"开启行号显示
set number
"高亮显示当前行/列
set cursorline
"set cursorcolumn
"开启语法高亮功能
syntax enable
"允许使用指定语法高亮配色方案代替默认方案
syntax on
"自适应不同语言的智能缩进
filetype indent on
"将指制表符拓展为空格
set expandtab
"设置编辑时占用的空格数
set tabstop=4
"设置格式化时制表符占用空格数 
set shiftwidth=4
"让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
"设置字体
set encoding=utf-8
" "禁止代码自动折行
set nowrap
"禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set guifont=Inconsolata-g\ for\ Powerline:h11

"--------------按键映射配置区-——--------------------

nnoremap <leader>s :w<CR> 
map <leader>w <C-w>
nnoremap <leader>q :q<CR>
nnoremap <leader>fq :q!<CR>
nnoremap <C-s> :source %<CR>
nnoremap <leader>v :vertical<Space>h<Space>
"nnoremap <leader>e :!<Space>
nnoremap <silent> <leader>b  :sh<CR>
nnoremap <silent> <leader>u viwgU
nnoremap <leader>e :e<Space>
noremap <leader>f :Autoformat<CR>
nnoremap <leader>e :e<Space>

noremap <silent> <C-k> :vertical resize-3<CR>
noremap <silent> <C-k> :vertical resize-3<CR>
" edit .vimrc file
nnoremap <silent> <F3> :e ~/.vimrc<CR>


"--------------——主题-------------------------------
"molokai
colorscheme molokai

"-------------------自定义函数-----------------------
let g:WorkSpace = "~/WorkSpace"

function DefaultWorkDirectory(directoryName)
    execute ":cd " .a:directoryName
endfunction

"call DefaultWorkDirectory(WorkSpace)


call plug#begin('~/.vim/plugged')
" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin()
"call vundle#begin('~/some/path/here')
"--------------插件区-------------------------------
"let Vundle manage Vundle, required



"""""""""""""管理插件"""""""""""""""""""""""""""""""
Plug 'VundleVim/Vundle.vim' 
""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""Dash"""""""""""""""""""""""""""""""
Plug 'rizzatti/dash.vim'
""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""airline""""""""""""""""""""""""""""""
Plug 'vim-airline/vim-airline'
Plug 'ludovicchabant/vim-lawrencium'
""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""语法高亮插件“”“”“”“”“”“”“”“""""""""""
Plug 'octol/vim-cpp-enhanced-highlight'
let g:cpp_class_scope_highlight=1
let g:cpp_member_variable_highlight=1
let g:cpp_class_decl_highlight=1
let g:cpp_experimental_template_highlight = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""" You Complete Me""""""""""""""""""""""
Plug 'Valloric/YouCompleteMe'

"回车选中自动匹配当前项
inoremap <expr> <CR> pumvisible()? "\<C-y>" : "\<CR>" 

"全局配置文件所在的位置
let g:ycm_global_ycm_extra_conf = '~/.ycm_global_ycm_extra_conf'
"补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
"允许 vim 加载  .ycm_extra_conf.py文件，不再提示
let g:ycm_confirm_extra_conf=0
"开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_tags_fils=1
"从第一个键入字符就开始罗列补全
let g:ycm_min_num_of_chars_for_completion=1
"禁止缓存匹配项，每次都重新生成 
let g:ycm_cache_omnifunc=0
"语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
"补全内容不以分割窗口形式出现，只显示补全列表
set completeopt-=preview
" 离开插入模式关闭预览
let g:ycm_autoclose_preview_window_after_insertion =1
let g:ycm_goto_buffer_command='horizontal-split'

"开启YCM标签补全
let g:ycm_collect_identifiers_from_tags_files=1
"OmniCppComplete补全
"修改对c函数的补全快捷键，默认时CTRL+space，修改为<leader>+;
let g:ycm_key_invoke_completion='<leader>;'
"错误的提示符号
let g:ycm_error_symbol='✗'
"警告的提示濡毫
let g:ycm_warning_symbol='⚠'
" 语法分析错误提示框
let g:ycm_show_diagnostics_ui=1
" ycm will show the completion menu even, when typing inside comments.

let g:ycm_semantic_triggers =  {
      \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
      \ 'cs,lua,javascript': ['re!\w{2}'],
      \ }
""""""""""""""""""""""""""""""""""""""""""""""""""""





"""""""""""NerdTree"""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""ctrl-space""""""""""""""""""""""""""""""
Plug 'szw/vim-ctrlspace'
""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""easy-motion""""""""""""""""""""""""""""
Plug 'easymotion/vim-easymotion'
""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""clang-format""""""""""
Plug 'rhysd/vim-clang-format'
""""""""""""""""""""""""""""""""""


"""""""""""括号自动匹配"""""""""""""""""""""""""""""
Plug 'Raimondi/delimitMate'
""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""tagbar""""""""""""""""""""""""""""""""""""
Plug 'majutsushi/tagbar'
""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""CtrlP""""""""""""""""""""""""""""""""""""
Plug 'kien/ctrlp.vim'
""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""vim-autoformat"""""""""""""""""""""""""""
Plug 'Chiel92/vim-autoformat'

"""""""""""""""""LeaderF""""""""""""""""""""""""""""
Plug 'Yggdroot/LeaderF' 
nnoremap <C-f> :LeaderfFunction<cr>
""""""""""""""""echodoc""""""""""""""""""""""""""""""'
Plug 'Shougo/echodoc.vim'
let g:echodoc#enable_at_startup=1

"""""""""""""""asyncrun""""""""""""""""""""""""""""""
Plug 'skywind3000/asyncrun.vim'
"自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 6
 
" 任务结束时候响铃提醒
let g:asyncrun_bell = 1
"""""""""""""""""""vim-fugitive"""""""""""""""""""""
Plug 'tpope/vim-fugitive'
" 设置 F10 打开/关闭 Quickfix 窗口
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>

""""""""""""vim-dirvish""""""""""""""""""""""""""""""
Plug 'justinmk/vim-dirvish'
Plug 'rdnetto/YCM-Generator' , {'branch': 'stable'}

Plug 'mhinz/vim-signify'
Plug 'Yggdroot/indentLine'
let g:indentLine_enable = 1
let g:indentLine_char = '¦'
"""""""""""""""vim-signify"""""""""""""""""""""""""""
let g:signify_vcs_list = ['git']
let g:signify_realtime = 0
let g:signify_cursorhold_normal=1
let g:signify_cursorhold_insert=1
let g:signify_update_on_focusgained = 1


""""""""""""""""""""""""""""Vundle使用说明"""""""""""""""""""""""""
" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on
" To ignore plugin indent changes, instead use:
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
call plug#end()
