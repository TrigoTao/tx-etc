set nocompatible          "不要兼容vi 必须在第一行
filetype off              "必须的设置：
autocmd! bufwritepost _vimrc source %         "自动载入配置文件不需要重启

"在使用screen的时候加上这段防止方向键失效
if match($TERM, "screen")!=-1
  set term=xterm
endif

"tab setting {
set tabstop     =2
set shiftwidth  =2
set softtabstop =2
set expandtab
"}
"
set number                 "显示行号
set ci                     " 类似C语言程序的缩进
set pastetoggle=<F9>       "进入insert模式，按F9，就可以关闭自动缩进

"使用tab键来代替%进行匹配跳转
nnoremap <tab> %
vnoremap <tab> %

set clipboard+=unnamed     "共享剪贴板"
"Vundle Settings {
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" }

"for minibuf 
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

" molokai set
" let g:molokai_original = 1
let g:rehash256 = 1
set background=dark

colorscheme desert

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 
  " 在两端加上、修改、删除匹配的符号如（）
  Bundle 'tpope/vim-surround'
  " 神级插件，ZenCoding(原名)可以让你以一种神奇而无比爽快的感觉写HTML、CSS
  Bundle 'mattn/emmet-vim'
  " coffee-scrpit support
  Bundle 'kchmck/vim-coffee-script'
  " Git in vim
  Bundle 'tpope/vim-fugitive'
  " better color
  Bundle 'tomasr/molokai'
 
 " vim-scripts repos
  
  " 在输入()等需要配对的符号时，自动帮你补全剩余半个
  Bundle 'AutoClose'
  " Use the repeat command (.) with supported plugins
  Bundle 'repeat.vim'
  " 在VIM的编辑窗口树状显示文件目录
  Bundle 'The-NERD-tree'
  " 切换缓冲区
  Bundle 'minibufexpl.vim'
 " non github repos
  "Bundle 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (ie. when working on your own plugin)
  "Bundle 'file:///Users/gmarik/path/to/plugin'
  " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
