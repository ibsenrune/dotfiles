filetype on
filetype plugin indent on
syntax on
set expandtab
set tabstop=2
set number
set smartindent

" VIM mappings ------------------------------
"In INSERT mode, press jj to exit insert mode
inoremap jj <Esc>

let mapleader=" "
" Navigate windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <Leader>o <C-w>o
noremap <Leader>p <C-w><C-p>

" Navigate buffers
"noremap <Leader>p :bp<cr>
"noremap <Leader>n :bn<cr>
"noremap <Leader>d :bd<cr>

" VIM plugins --- load scripts configured via vim-plug
if filereadable(expand("~/.vimrc.plug"))
  source ~/.vimrc.plug
endif

" LSP commands, cf. vim-lsp
au FileType fsharp  nmap <buffer> <Leader>h <plug>(lsp-hover)
au FileType fsharp  nmap <buffer> <Leader>d <plug>(lsp-definition)
au FileType fsharp  nmap <buffer> gr <plug>(lsp-references)
au FileType fsharp  nmap <buffer> ge <plug>(lsp-document-diagnostics)
au FileType fsharp  nmap <buffer> gs <plug>(lsp-document-symbol)


let $RC=expand('~/.vimrc')

" Enable logging of LSP communication
"let g:lsp_log_verbose=1
"let g:lsp_log_file=expand('~/.vim/vim-lsp.log')
