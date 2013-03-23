if has("gui_macvim")
    " Command-/ to toggle comments
    map <D-/> <plug>NERDCommenterToggle<CR>

    " Command-][ to increase/decrease indentation
    vmap <D-]> >gv
    vmap <D-[> <g
endif

set guifont=Source\ Code\ Pro:h13 " Font family and font size
set antialias                     " MacVim: smooth fonts.
set guioptions-=T                 " Hide toolbar.
set guioptions-=L                 " Hide left scrollbar.
set guioptions-=r                 " Hide right scrollbar.
