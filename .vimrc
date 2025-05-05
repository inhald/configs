"disable compatibility with vi"
set nocompatible


"Enable filetype detection"
filetype on

"Enable plugins"
filetype plugin on

"load an indent file for detected file type"
filetype indent on

"syntax highlighting"
syntax on	


"numbers"
"set number"

"cursorline"
"set cursorline"

"no backup"
set nobackup

"set relative number"
"set relativenumber"

set termguicolors
set background=dark
syntax enable


" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

	Plug 'tpope/vim-commentary'

	Plug 'SirVer/ultisnips'

	Plug 'catppuccin/vim', {'as': 'catppuccin'}


call plug#end()

" }}}

"ULTISNIPS -------------------------------------------------------------- "

let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpsForwardTrigger = '<Tab>'
let g:UltiSnipsJumpsBackwardTrigger = '<S-Tab>'
let g:UltiSnipsSnippetDirectories = [$HOME. '/.vim/UltiSnips']

"Catppuccin ------------------------------------------------------------- "
let g:lightline = {'colorscheme': 'catppuccin_mocha'}
colorscheme catppuccin_mocha

