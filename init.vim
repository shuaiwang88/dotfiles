
"set runtimepath+=~/.vim_runtime
:set nu
:set relativenumber
set tw=79 "width of the documents
set nowrap " Don't auto wrap on load
set fo-=t " Don't wrap text when type
set colorcolumn=80
colorscheme elflord
highlight ColorColumn ctermbg=233
" easier formatting paragraph
vmap Q gp
nmap Q gpaq
:set expandtab
:set tabstop=4
:set shiftwidth=4
syntax on
:au FocusLost * :wa "Always autosave everything

set nocompatible
filetype plugin on

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
Plug 'ervandew/supertab' "super tab
Plug 'vim-scripts/RltvNmbr.vim'
Plug 'vim-airline/vim-airline'
Plug 'lervag/vimtex'
" Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-commentary'
Plug 'spf13/vim-autoclose'
Plug 'JamshedVesuna/vim-markdown-preview' "markdown
Plug 'junegunn/goyo.vim' "Distraction-free writing in Vim
" Plug 'xolox/vim-notes'
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'honza/vim-snippets' "Snippet
"R nvim"
Plug 'jalvesaq/Nvim-R'
Plug 'roxma/nvim-completion-manager'
Plug 'gaalcaras/ncm-R'
Plug 'chrisbra/csv.vim'
"python plugin
Plug 'jalvesaq/vimcmdline'
Plug 'szymonmaszke/vimpyter'
call plug#end()

let vim_markdown_preview_github=1 "markdown


" -------Snippet setttings ----------------------

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumperForwardTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"

" -------- add/remove quote to a word 
" 'quote' a word
" double "quote" a word
nnoremap <Leader>qw ciw""<Esc>P
" remove quotes from a word
nnoremap wq :silent! normal mpeld bhd `ph<CR>


"---------------vimwiki---------------------------------------
let g:vimwiki_list = [{'path': '~/Google\ Drive/Personal/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
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

" nmap <LocalLeader>st<Plug>RStart
nmap <silent> <LocalLeader>h :call RAction('head', ', n = 10')<CR>
" add pipe sign %>% for R file 
autocmd FileType r inoremap <buffer> \> <Esc>:normal! a%>%<CR>a 
autocmd FileType r inoremap <buffer> \i <Esc>:normal! a%in%<CR>a 
autocmd FileType r inoremap <buffer> pyt <Esc>:normal! alibrary(reticulate);repl_python()<CR>a 

" add shortcut for python
autocmd FileType py inoremap <buffer> = <Esc>:normal! a=<CR>a 

" add pip sign %>% for rmd or other R related file
" autocmd FileType rnoweb inoremap <buffer> > <Esc>:normal! a%>%<CR>a 
" autocmd FileType rmd inoremap <buffer> > <Esc>:normal! a%>%<CR>a 
" vimcmdline settings ---------------------
" vimcmdline mappings
let cmdline_map_start          = '<LocalLeader>rf'
let cmdline_map_send           = '<Space>'
let cmdline_map_send_and_stay  = '<LocalLeader><Space>'
let cmdline_map_source_fun     = '<LocalLeader>ff'
let cmdline_map_send_paragraph = '<LocalLeader>pp'
let cmdline_map_send_block     = '<LocalLeader>bb'
let cmdline_map_quit           = '<LocalLeader>rq'

" vimcmdline options
let cmdline_vsplit      = 1      " Split the window vertically
let cmdline_esc_term    = 1      " Remap <Esc> to :stopinsert in Neovim's terminal
let cmdline_in_buffer   = 1      " Start the interpreter in a Neovim's terminal
let cmdline_term_height = 15     " Initial height of interpreter window or pane
let cmdline_term_width  = 115     " Initial width of interpreter window or pane
let cmdline_tmp_dir     = '/tmp' " Temporary directory to save files
let cmdline_outhl       = 1      " Syntax highlight the output
"---------------------------------------------------------------------
"try
"source ~/.vim_runtime/my_configs.vim
"catch
"endtry
