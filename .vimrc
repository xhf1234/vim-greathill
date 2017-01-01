call pathogen#infect()
call pathogen#helptags()

set cursorline "高亮显示当前行
set cursorcolumn "高亮显示当前列

syntax on "语法高亮
set number "显示行号
set smartindent "自动补全(换行时拷贝当前行的缩进)
set expandtab "用空格代替tab
set tabstop=4 "用4个空格代替tab
set softtabstop=4 "回退时删除4个空格
set backspace=2 "否则删除会有问题
set shiftwidth=4 "缩进为4个空格
set ruler "在右下角显示光标所在的位置
set so=7 "垂直移动时光标离底部7行
colo molokai "配色方案
set t_Co=256
set incsearch "查找时自动跳转
set hlsearch "查找时高亮关键字
set statusline+=%f "在状态栏显示当前文件路径
inoremap jj <ESC> "输入模式时jj代替ESC

set runtimepath^=~/.vim/plugin/ctrlp.vim
filetype plugin on

set wildignore+=*.pyc,__init__.py,frontend-target*,target*,node_modules "ctrlp 插件忽略列表
nmap <silent> <SPACE> :CtrlPBuffer<CR>
nmap <silent> <S-SPACE> :CtrlPMRU<CR>
let g:ctrlp_max_files = 10000

nmap <silent> <F3> :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 50

nmap <F2> :NERDTree<CR>
nmap nt :NERDTreeFind<CR>

" 保存文件时生成 jstags
function! GenerateTag()
    let file = fnamemodify(findfile('jstags', '.;'), ':p')
    if executable(file)
        execute ':silent !' . file
    endif
endfunction
autocmd BufWritePost *.js call GenerateTag()

"切换窗口
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

let g:snips_author="xuhf"
let g:snips_email="xuhf@fenbi.com"
let g:snips_compary="fenbi.com"

let mapleader = ","

let g:syntastic_javascript_jslint_conf = "--unparam --unused --browser --vars --nomen --plusplus --sloppy --predef define --predef window --predef location --predef history --predef location --predef document --predef use --predef __"
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 0
let g:syntastic_mode_map = { 'mode': 'active',
                    \ 'active_filetypes': ['javascript'],
                    \ 'passive_filetypes': [] }

" 保存文件时jshint
let jshint2_save = 1

" 自定义设定文件后缀和filetype的对应
autocmd BufRead,BufNewFile   *.gyp set filetype=json
autocmd BufRead,BufNewFile   *.gypi set filetype=json
