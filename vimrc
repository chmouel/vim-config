call pathogen#infect()

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
set nocp
set nofoldenable
set nohlsearch
set noincsearch
set nosmartindent
set paste
set ruler
set scrolloff=20
set shiftwidth=4
set showmatch
set showmode
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set tabstop=4
set textwidth=0
set viminfo+=!
set wrap

syn on
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

"Gundo
map <leader>g :GundoToggle<CR>

"minibufexpl
map <leader>[ :MBEbp<CR>
map <leader>] :MBEbn<CR>
