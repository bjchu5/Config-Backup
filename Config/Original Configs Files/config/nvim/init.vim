"Python
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

"C Languages
let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-3.9/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/llvm-3.9/lib/clang'
let g:deoplete#sources#clang#std#cpp = 'c++11'


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/bjchu5/.random/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/bjchu5/.random')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/deoplete.nvim')
call dein#add('davidhalter/jedi')
call dein#add('zchee/deoplete-jedi')
call dein#add('morhetz/gruvbox')
call dein#add('zchee/deoplete-clang')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"Enable Plugins
call deoplete#enable()

"Let <Tab> also do completion
inoremap <silent><expr> <Tab>
\ pumvisible() ? "\<C-n>" :
\ deoplete#mappings#manual_complete()

"Close the documentation window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


autocmd FileType python nnoremap <leader>y :0,$!yapf<Cr>
autocmd CompleteDone * pclose " To close preview window of deoplete automagically

""""""" Python stuff """""""
syntax enable
set number showmatch
set expandtab shiftwidth=4 tabstop=4 softtabstop=4 autoindent
let python_highlight_all = 1

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark   "Setting Dark Mode  
"set background=light "Setting light mode  
