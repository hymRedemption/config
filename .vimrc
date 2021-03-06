" load the vundle
if filereadable(expand("~/.vim/config/plugins.vim"))
  source ~/.vim/config/plugins.vim
endif

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set termencoding=utf-8
set encoding=utf-8

set backspace=indent,eol,start  " make that backspace key work the way it should
set guifont=Monaco:h12       " 适合Ruby开发的字体 && 字号
set tabstop=2                " 设置tab键的宽度
set softtabstop=2
set shiftwidth=2             " 换行时行间交错使用4个空格
set autoindent               " 自动对齐
set cindent shiftwidth=2     " 自动缩进4空格
set smartindent              " 智能自动缩进
set ai!                      " 设置自动缩进
set nu rnu                      " 显示行号
set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 查找book时，当输入/b时会自动找到
set hlsearch                 " 开启高亮显示结果
set incsearch                " 开启实时搜索功能
set nowrapscan               " 搜索到文件两端时不重新搜索
set vb t_vb=                 " 关闭提示音
set hidden                   " 允许在有未保存的修改时切换缓冲区
set list                     " 显示Tab符，使用一高亮竖线代替
set listchars=tab:\|\ ,
set tabstop=2
set shiftwidth=2
set expandtab
"set clipboard=unnamed        "Using the clipboard as the default register

set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"
if filereadable(expand("~/.vim/config/vimrc_background.vim"))
  source ~/.vim/config/vimrc_background.vim
endif

syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全

" auto delete the white space at the end of each line and delete the empty
" line at the end of the file
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufWritePre * :%s#\($\n\s*\)\+\%$##e

" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" 50/72规则  https://ruby-china.org/topics/15737
autocmd Filetype gitcommit setlocal spell textwidth=72
