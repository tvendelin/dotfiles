if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
  Plug 'https://github.com/vim-airline/vim-airline.git'
  Plug 'https://github.com/lifepillar/vim-gruvbox8.git'
  Plug 'https://github.com/ycm-core/YouCompleteMe', { 'commit': 'd98f896ada495c3687007313374b2f945a2f2fb4' } 
  Plug 'https://github.com/nvie/vim-flake8.git'
  Plug 'https://github.com/scrooloose/nerdtree.git'
  Plug 'https://github.com/tpope/vim-repeat.git'
  Plug 'https://github.com/tpope/vim-surround.git'
  Plug 'https://github.com/tpope/vim-commentary.git'
  Plug 'https://github.com/tpope/vim-ragtag.git'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"  Plug 'https://github.com/kana/vim-textobj-user.git'
"  Plug 'https://github.com/kana/vim-textobj-indent.git'
call plug#end()

" Change on Linux!
set rtp+=/opt/local/share/fzf/vim
let g:flake8_cmd = '/opt/local/Library/Frameworks/Python.framework/Versions/3.8/bin/flake8'

syntax on
set tabstop=4
set smarttab
set shiftwidth=4
set softtabstop=4
set autoindent
set expandtab
set bs=2
set number
set relativenumber
set wrap linebreak nolist
" For md files, hard line breaks at 100
au BufRead,BufNewFile *.md setlocal textwidth=100

set timeout
set ttimeout
set timeoutlen=2000
set ttimeoutlen=100

let mapleader = ","

map <C-j> :lnext<CR>
map <C-k> :lprevious<CR>
map <C-l> :ll<CR>
map <C-n> :cn<CR>
map <C-m> :cp<CR>
nmap <leader>cc :windo lcl\|ccl<CR>

:cabbrev h vert h

" Edit vimrc
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Source vimrc
:nnoremap <leader>sv :source $MYVIMRC<cr>
" Remove trailing whitespaces
":nnoremap <F8> :call Preserve("%s/\\s\\+$//")<cr>

color gruvbox8
set background=dark
let g:gruvbox_plugin_hi_groups = 1

filetype plugin indent on
set path+=**
set wildmenu

let g:ycm_python_binary_path = 'python3'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_always_populate_location_list = 1


let g:go_fmt_command = "goimports"
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_def_mapping_enabled = 0

let g:ragtag_global_maps = 1

function! Preserve(command)
  " Preparation: save window state
  let l:saved_winview = winsaveview()
  " Run the command:
  silent! execute a:command
  " Clean up: restore previous window position
  call winrestview(l:saved_winview)
endfunction
