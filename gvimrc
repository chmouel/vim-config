
autocmd FileType gitcommit setlocal previewheight=22 

if has("unix")
    if system('uname')=~ 'Darwin'
        set macmeta
        set guifont=Inconsolata:h19
        colorscheme Dark
    else
        set guifont=Inconsolata\ 14
        colorscheme desert
        set background=dark
        set guioptions -=T
        set guioptions -=m
    endif
endif

set switchbuf=useopen,usetab

" Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
" the right side. Ctrl-Shift-Tab goes the other way.
noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabprev<CR>
noremap <D-]> :tabnext<CR>
noremap <D-[> :tabprev<CR>

" Switch to specific tab numbers with Command-number
noremap <D-1> :tabn 1<CR>
noremap <D-2> :tabn 2<CR>
noremap <D-3> :tabn 3<CR>
noremap <D-4> :tabn 4<CR>
noremap <D-5> :tabn 5<CR>
noremap <D-6> :tabn 6<CR>
noremap <D-7> :tabn 7<CR>
noremap <D-8> :tabn 8<CR>
noremap <D-9> :tabn 9<CR>
" Command-0 goes to the last tab
noremap <D-0> :tablast<CR>

"GOLANG
GoPath ~/GIT/go

