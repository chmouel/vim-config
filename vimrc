"Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'

call vundle#end()            " required

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
set nostartofline
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

"
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>


"map c-up c-down to 5 lines up/down
map <c-up> 5<C-y>
map <c-down> 5<C-e>

"Use <Leader><Leader> for Control-Meta-L like
nnoremap <leader><leader> <c-^>

nnoremap <leader>o :CtrlP<CR>
nnoremap <C-f> :CtrlP<CR>

"Map \cd to have the buffer in current dir
nnoremap <leader>cd :lcd %:p:h<CR>

if has("gui_running")
    autocmd FileType gitcommit setlocal previewheight=22
endif
autocmd FileType gitcommit DiffGitCached | wincmd J

"Ignores
set wildignore+=*.o,*.obj,.git
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(pyc|exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" Change colours of line numbers.
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=Grey guibg=NONE
