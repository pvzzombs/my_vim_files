set nocompatible

filetype off

syntax on

filetype plugin indent on

set modelines=0

set number

set ruler

set visualbell

set encoding=ansi

set wrap
"set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:>
runtime! macros/matchit.vim

nnoremap j gj
nnoremap k gk
set whichwrap+=<,>,h,l

set hidden

set ttyfast

set laststatus=2

set showmode
set showcmd
"set cmdheight=2

nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr>

inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

"auto complete
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c
"set complete-=t
"set complete-=i

" Navigate the complete menu items like CTRL+n / CTRL+p would.
inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" Select the complete menu item like CTRL+y would.
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"

" Cancel the complete menu item like CTRL+e would.
inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"


map <leader>q gqip

"set listchars=tab:. ,eol:.

"map <leader>l :set list!<CR> 

"support for yaml syntax
"au BufNewFile,BufRead *.yaml,*.yml so ~/vimfiles/syntax/yaml.vim

"set t_Co=256
"set background=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Monospace\ 14
  elseif has("gui_win32")
    set guifont=Consolas:h14:cANSI
  endif
endif

"set cursorline

"let g:lightline = {
"      \ 'colorscheme': 'ironman',
"      \ }

"enable only if it's present in your ~/vimfiles/colors or ~/.vim/colors
colorscheme ironman

