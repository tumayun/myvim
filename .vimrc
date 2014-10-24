" VUNDLE BEGIN
" ============

set nocompatible      " We're running Vim, not Vi!
set tabstop=2 shiftwidth=2 softtabstop=2
filetype plugin indent on
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" https://github.com/slim-template/vim-slim
" call pathogen#infect()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" original repos on github
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails.git'
Bundle 'ervandew/supertab'
" Bundle 'Lokaltog/powerline'
" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
" 希望换成更好的注释工具
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-vividchalk'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rake'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'godlygeek/tabular'
Bundle 'majutsushi/tagbar'
Bundle 'jpo/vim-railscasts-theme'
" F11全屏, F6 Open
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-shell'
Bundle 'Shougo/vimproc'
" 需要先安装vimproc
Bundle 'Shougo/vimshell'

Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'matchit.zip'
Bundle 'bufexplorer.zip'
Bundle 'grep.vim'
Bundle 'rizzatti/dash.vim'

" markdown
Bundle 'plasticboy/vim-markdown'
Bundle 'moll/vim-node'
Bundle 'jamescarr/snipmate-nodejs'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'kchmck/vim-coffee-script'

" emmet for vim
Bundle "mattn/emmet-vim"

" VUNDLE END
" ==========

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
compiler ruby         " Enable compiler support for ruby

set autoindent
set hlsearch
set incsearch
set number
set expandtab
set ruler
set nobackup
set showcmd
set cursorline
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
set laststatus=2
"set linespace=0 " No extra spaces between rows"
set wildmenu " show list instead of just completing
set wildmode=list:longest,full " command <Tab> completion, list matches, then longest common part, then all.

set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1 " 如果你要打开的文件编码不在此列，那就添加进去
set termencoding=utf-8


"" 快速查找
noremap <silent> <leader>ff :FufFile!<CR>
noremap <silent> <leader>fa :FufCoverageFile!<CR>
noremap <silent> <leader>fb :FufBuffer!<CR>
noremap <silent> <leader>fd :FufDir!<CR>
noremap <silent> <leader>fm :FufMruFile!<CR>
noremap <silent> <leader>fw :FufFileWithCurrentBufferDir!<CR>
noremap <silent> <leader>fc :FufMruCmd!<CR>
" 文件夹树和tag列表以及画图工具
noremap <silent> <leader>tt :NERDTreeToggle<CR>
noremap <silent>nf :NERDTreeFind<CR>
map <F2> :NERDTreeFind<CR>
nmap <F8> :TagbarToggle<CR>

" brew install ack
let g:ackprg="ack -H --nocolor --nogroup --column"
" let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabDefaultCompletionType = "<c-n>"

" CTRL-P BEGIN
"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_max_height = 30
"
" CTRL-P END

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>

" slim
nnoremap <silent> <leader>ms :call pathogen#infect()<CR>

" vim-ragtag
let g:ragtag_global_maps = 1

let Tlist_Ctags_Cmd = '/usr/local/opt/ctags/bin/ctags'

" Dash
:nmap <silent> <leader>d <Plug>DashSearch

" au FileType javascript call JavaScriptFold()
"" vimim end
