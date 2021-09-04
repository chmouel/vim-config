""Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'mhinz/vim-startify'
Plugin 'tpope/vim-rhubarb'
Plugin 'junegunn/gv.vim'
Plugin 'chr4/nginx.vim'

set noerrorbells
set visualbell
set t_vb=
set background=dark
set backspace=2
set expandtab
set hidden
set isfname-==
set laststatus=2
set modelines=1
set noautoindent
set nobackup
set nocompatible
set nocp
set nofoldenable
set nohlsearch
set incsearch
set nosmartindent
set nostartofline
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
set autochdir

"netrw
let g:netrw_liststyle=3

syn on
filetype plugin on
filetype indent on

"
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>


"map c-up c-down to 5 lines up/down
map <c-up> 5<C-y>
map <c-down> 5<C-e>

"Have you noticed that both the enter key and the backspace key are basically
"unused in normal mode. They just go down one line or back one character
"respectively. Well, we’ve got j and l for that, so let’s rebind them to move
"a little further (one paragraph):
nnoremap <BS> {
onoremap <BS> {
vnoremap <BS> {
nnoremap <expr> <CR> empty(&buftype) ? '}' : '<CR>'
onoremap <expr> <CR> empty(&buftype) ? '}' : '<CR>'
vnoremap <CR> }

"Less Like view
map <space> <C-d>

"Use <Leader><Leader> for Control-Meta-L like
nnoremap <leader><leader> <c-^>

"Map \cd to have the buffer in current dir
nnoremap <leader>cd :lcd %:p:h<CR>

"Ignores
set wildignore+=*.o,*.obj,.git
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Expand Region + -
Plugin 'terryma/vim-expand-region'

" GOLANG
Plugin 'fatih/vim-go'
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_auto_type_info = 1
autocmd BufWritePost *.go normal! zv
au Filetype go nnoremap . :GoDef<CR>
au FileType go nmap <leader>r <Plug>(go-run)
" golang
au filetype go inoremap <buffer> . .<C-x><C-o>

"Commenter gcc
Plugin 'tomtom/tcomment_vim'

" ctrl-p
Plugin 'kien/ctrlp.vim'
nnoremap <Leader>o :CtrlPMRUFiles<CR>
nnoremap <Leader>p :CtrlP<CR>
let g:ctrlp_mruf_exclude = '.*/tmp/.*\|.*/.git/.*'
let g:ctrlp_max_files = 200000
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor --ignore=vendor --ignore images --ignore svg --ignore fonts -g ""'
    let g:ctrlp_use_caching = 0
else
    let g:ctrlp_clear_cache_on_exit = 0
endif

" ale syntastic
Plugin 'dense-analysis/ale'
let g:ale_linters = {'go': ['gometalinter', 'gofmt']}

" Theme
Plugin 'dracula/vim'

" Buffer switching
Plugin 'mihaifm/bufstop'
nnoremap <Leader>b :Bufstop<CR>


" Lightligne
Plugin 'itchyny/lightline.vim'
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

"Change colours of line numbers.
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=Grey guibg=NONE

"Open local.vim if available
try
    source ~/.vim/local.vim
catch
endtry

call vundle#end()            " required

"Config after vundle
colorscheme dracula
