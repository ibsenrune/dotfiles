colo elflord
syntax on

set cursorline
hi CursorLine cterm=NONE ctermbg=darkgray

set statusline=
set statusline+=%#StatusLine#
set statusline+=\ %f
set statusline+=%m
set statusline+=\ %y
set statusline+=\ [%{&fileformat}]

"Always show status line
set laststatus=2 

"Show matching paren
set showmatch

"Highlight search matches
set hlsearch
