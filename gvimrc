if has("gui_macvim")
    " Fullscreen
    set fuopt=maxhorz,maxvert

    " Command-Return for fullscreen
    macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

    " Command-T for CommandT
    macmenu &File.New\ Tab key=<D-T>
    map <D-t> :CommandT<CR>
    imap <D-t> <Esc>:CommandT<CR>

    " Command-Shift-F for Ack
    map <D-F> :Ack<space>

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

color ir_black                    " Colorscheme
