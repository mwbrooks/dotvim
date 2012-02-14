if has("gui_macvim")
    " Command-/ to toggle comments
    map <D-/> <plug>NERDCommenterToggle<CR>

    " Command-][ to increase/decrease indentation
    vmap <D-]> >gv
    vmap <D-[> <g
endif


set guifont=DejaVuSansMono:h12    " Font family and font size.
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
set guioptions-=L                 " Hide left scrollbar.
set guioptions-=r                 " Hide right scrollbar.

set background=dark

" Or use ir_black or vividchalk or solarized
colorscheme Monokai 
