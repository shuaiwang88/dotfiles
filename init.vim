"set runtimepath+=~/.vim_runtime
:set nu
:set relativenumber
set tw=79 "width of the documents
set nowrap " Don't auto wrap on load
set fo-=t " Don't wrap text when type
set colorcolumn=80
highlight ColorColumn ctermbg=233
" easier formatting paragraph
vmap Q gp
nmap Q gpaq
:set expandtab
:set tabstop=4
:set shiftwidth=4
syntax on
:au FocusLost * :wa "Always autosave everything

autocmd FileType latex,tex,md,markdown setlocal spell
" autocmd FileType R setlocal shiftwidth=2 tabstop=2 expandtab
""source ~/.vim_runtime/vimrcs/basic.vim
"source ~/.vim_runtime/vimrcs/filetypes.vim
"source ~/.vim_runtime/vimrcs/plugins_config.vim
"source ~/.vim_runtime/vimrcs/extended.vim

"let g:python3_host_prog='usr/bin/python3'
" ---------------change parameters-----------------------
" set timeoutlen=1000 ttimeoutlen=0"  escape characters trigger time
" --------------------------------------------------
" ramapping keys
:tnoremap <Esc> <C-\><C-n> "go back to Normal mode from terminal
" plugin
call plug#begin('~/.local/share/nvim/plugged')
Plug 'godlygeek/tabular'
" Plug 'scrooloose/nerdtree'
" Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale' "syntax for python
Plug 'vim-scripts/RltvNmbr.vim'
Plug 'vim-airline/vim-airline'
Plug 'lervag/vimtex'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-commentary'
Plug 'spf13/vim-autoclose'
Plug 'JamshedVesuna/vim-markdown-preview' "markdown
Plug 'junegunn/goyo.vim' "Distraction-free writing in Vim
"R nvim"
Plug 'jalvesaq/Nvim-R'
Plug 'roxma/nvim-completion-manager'
Plug 'gaalcaras/ncm-R'
Plug 'chrisbra/csv.vim'
"python plugin
Plug 'jalvesaq/vimcmdline'
call plug#end()

let vim_markdown_preview_github=1 "markdown

"-----------R nvim settings -----------------------------------------------------
" settings :: Nvim-R plugin
" R output is highlighted with current colorscheme
let g:rout_follow_colorscheme = 1
" R commands in R output are highlighted
let g:Rout_more_colors = 1
let R_esc_term = 1 
let R_close_term = 0
" let R_rconsole_width=1000 "console is at the bottom all the time
" let R_assign = 2 "convert __ to <-
let R_assign_map = "--"
let R_show_args = 2 "show agrguments for funtions during omnicompletion
let R_rconsole_width = 115 
autocmd VimResized * let R_rconsole_width = winwidth(0) / 2
" remap keys 
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

nmap <LocalLeader>s <Plug>RStart

" vimcmdline settings ---------------------

"---------------------------------------------------------------------
"try
"source ~/.vim_runtime/my_configs.vim
"catch
"endtry

