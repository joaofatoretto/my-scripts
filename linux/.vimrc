"-------------------------------------------------------------
" General
"-------------------------------------------------------------
syntax on
set number
set title
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a             " Enables mouse
set t_Co=256            " Use 256 colours
filetype indent on
filetype plugin on
set encoding=utf-8
set fileencoding=utf-8

" TabComplete like bash
set wildmode=longest,list,full
set wildmenu

" Request sudo password to modify root files
cmap w!! %!sudo tee % > /dev/null

" Force the highlight from start of file (but slowest result)
autocmd BufEnter * :syntax sync fromstart

" To navigate in lines without line break (large line)
imap <up> <esc>gk<insert><right>
imap <down> <esc>gj<insert><right>
map <up> gk
map <down> gj

"-------------------------------------------------------------
" Vundle
"-------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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

"-------------------------------------------------------------
" YouCompleteMe
"-------------------------------------------------------------

highlight Pmenu ctermfg=white ctermbg=darkgray
highlight PmenuSel ctermfg=black  ctermbg=white
highlight clear SignColumn

let g:ycm_global_ycm_extra_conf = '~/.ycm/ycm_extra_conf.py'
let g:ycm_path_to_python_interpreter = '/usr/bin/python'

" Remove preview window
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview

"-------------------------------------------------------------
" Vim airline
"-------------------------------------------------------------
set laststatus=2

"-------------------------------------------------------------
" Syntastic
"-------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
