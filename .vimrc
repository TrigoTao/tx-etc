set nocompatible          " 不要兼容vi 必须在第一行
filetype off              " vundle必须的设置
autocmd! bufwritepost _vimrc source %         "自动载入配置文件不需要重启

" turn on syntax highlighting
syntax on

" tab setting
set tabstop     =2
set shiftwidth  =2
set softtabstop =2
set expandtab

set number                 " 显示行号
set ci                     " 类似C语言程序的缩进
set pastetoggle=<F9>       " 进入insert模式，按F9，就可以关闭自动缩进

" 使用tab键来代替%进行匹配跳转
nnoremap <tab> %
vnoremap <tab> %

colorscheme desert

""""""""""""""""""""""""""""""
" vundle
""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

 " My Bundles here:
    " plugin on GitHub repo
  " Git in vim
  Plugin 'tpope/vim-fugitive'
  " 在两端加上、修改、删除匹配的符号如（）
  Plugin 'tpope/vim-surround'

    " plugin from http://vim-scripts.org/vim/scripts.html
    " Plugin 'L9'
  " 在VIM的编辑窗口树状显示文件目录
  Plugin 'The-NERD-tree'

    " Git plugin not hosted on GitHub
    " Plugin 'git://git.wincent.com/command-t.git'
    
    " git repos on your local machine (i.e. when working on your own plugin)
    " Plugin 'file:///home/gmarik/path/to/plugin'
    
    " The sparkup vim script is in a subdirectory of this repo called vim.
    " Pass the path to set the runtimepath properly.
    " Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    
    " Install L9 and avoid a Naming conflict if you've already installed a
    " different version somewhere else.
    " Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
