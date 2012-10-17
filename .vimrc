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
colorscheme desert "配色方案
set incsearch "查找时自动跳转

set runtimepath^=~/.vim/plugin/ctrlp.vim
call pathogen#infect()
call pathogen#helptags()
filetype plugin on

set wildignore+=*.pyc,__init__.py,frontend-target*,target* "ctrlp 插件忽略列表
nmap <silent> <SPACE> :CtrlPBuffer<CR>
nmap <silent> <S-SPACE> :CtrlPMRU<CR>
let g:ctrlp_max_files = 10000

nmap <silent> <F3> :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 50

nmap <F2> :NERDTree<CR>

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
