set runtimepath+=~/.vim_runtime
:set nu
:set relativenumber
set tw=79 "width of the documents
set nowrap " Don't auto wrap on load
set fo-=t " Don't wrap text when type
"set colorcolumn= 80
highlight ColorColumn ctermbg=233
" easier formatting paragraph
vmap Q gp
nmap Q gpaq

:au FocusLost * :wa "Always autosave everything

autocmd FileType latex,tex,md,markdown setlocal spell
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

call plug#begin('~/.vim/plugged')
Plug 'godlygeek/tabular'
Plug 'vim-syntastic/syntastic'
Plug 'vim-scripts/RltvNmbr.vim'
Plug 'vim-airline/vim-airline'
Plug 'lervag/vimtex'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-commentary'
Plug 'spf13/vim-autoclose'
Plug 'JamshedVesuna/vim-markdown-preview' "markdown
call plug#end()

let vim_markdown_preview_github=1 "markdown
let vim_markdown_preview_browser='Opera'
try
source ~/.vim_runtime/my_configs.vim
catch
endtry
