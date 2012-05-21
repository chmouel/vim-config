<<<<<<< HEAD
call pathogen#infect()

syn on
set paste
set modeline
=======
>>>>>>> 4632b683ed1b16849173ad8bd8075c0f3bf902a8
set background=dark
set backspace=2
set expandtab
set hidden
set isfname-==
set laststatus=2
set modeline
set noautoindent
set nobackup
set nocompatible
set nofoldenable
set nohlsearch
set noincsearch
set nosmartindent
set paste
set ruler
set scrolloff=20
set showmatch
set showmode
<<<<<<< HEAD
set nosmartindent
set nobackup

set nocp
set nohlsearch
set noincsearch
=======
set spelllang=en_US,fr_FR 
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set shiftwidth=4
set tabstop=4
set textwidth=0
set viminfo+=!
set wrap
>>>>>>> 4632b683ed1b16849173ad8bd8075c0f3bf902a8

if has("autochdir")
    set autochdir
endif

syn on
filetype plugin on
filetype indent on

"Less Like view
map <backspace> <C-u>
map <space> <C-d>

"Use some easier windows navigation keybindings.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"Use <Leader><Leader> for Control-Meta-L like
nnoremap <leader><leader> <c-^>

if has("gui_running")
    autocmd FileType gitcommit setlocal previewheight=22
endif
autocmd FileType gitcommit DiffGitCached | wincmd w
