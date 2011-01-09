syn on
set paste
set modeline
set background=dark
set noai
set wrap
set nofoldenable
set ruler
set hidden
set showmatch
set showmode
set nosmartindent
set nobackup
set spelllang=en_US,fr_FR 

set nocp
set nohlsearch
set noincsearch

if has("autochdir")
    set autochdir
endif

set expandtab
set tw=0
set bs=2
set sw=4
set ts=4
set noai
set nocp
set isfname-==
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set viminfo+=!
set laststatus=2
set scrolloff=20

filetype plugin on
filetype indent on

"Less Like view
map <BACKSPACE> <C-u>
map <SPACE> <C-d>

"Emacs Style
imap <C-a> <Esc>I
imap <C-e> <ESC>A
imap <C-t> <ESC>lxpi
cnoremap <C-A>		<Home>
cnoremap <C-B>		<Left>
cnoremap <C-D>		<Del>
cnoremap <C-E>		<End>
cnoremap <C-F>		<Right>
cnoremap <C-N>		<Down>
cnoremap <C-P>		<Up>
cnoremap <Esc><C-B>	<S-Left>
cnoremap <Esc><C-F>	<S-Right>

"Buffer switching
map <F1> :bprev<CR>
map <F2> :bnext<CR>

"Tabs switching
map <C-A-t> :tabnew<CR>
map <C-A-w> :tabclose<CR>
imap <S-right> <ESC>:tabnext<CR>
map <S-right> :tabnext<CR>
imap <S-left> <ESC>:tabprevious<CR>
map <S-left> :tabprevious<CR>

highlight Pmenu ctermbg=black ctermfg=white
highlight PmenuSel ctermfg=cyan

if has("gui_running")
    autocmd FileType gitcommit setlocal previewheight=22
endif
autocmd FileType gitcommit DiffGitCached | wincmd w
