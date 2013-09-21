set nocompatible          "不要兼容vi
filetype off              "必须的设置：

"tab setting {
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"}
"
set number                 "显示行号
set ci                     " 类似C语言程序的缩进
set pastetoggle=<F9>       "进入insert模式，按F9，就可以关闭自动缩进

"Vundle Settings {
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" }

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
 "Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 "Bundle 'tpope/vim-rails.git'
  Bundle 'mattn/emmet-vim'
 " vim-scripts repos
  Bundle 'The-NERD-tree'
" Bundle 'L9'
" Bundle 'FuzzyFinder'
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
