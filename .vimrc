" =======================================
" Created by :- Manu Manohar Elegant Artz
" YouTube Channel:manumanohar
" =======================================

" Path adding to the system level
" =================================

set rtp+=~/.vim/bundle/Vundle.vim
" set path+=$VIMRUNTIME
set path+=**

" Plugings begins
" =================

call vundle#begin()

" Plugin 'scrooloose/nerdtree'
" Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'VundleVim/Vundle.vim'
Plugin 'dylanaraps/wal'
Plugin 'easymotion/vim-easymotion'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'markonm/traces.vim'
Plugin 'sickill/vim-monokai'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'blueyed/vim-diminactive'
Plugin 'christoomey/vim-titlecase'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'dracula/vim', { 'name': 'dracula' } "Vim Themes
Plugin 'mswift42/vim-themes'  "Vim themes

call vundle#end()

let g:lightline={'colorscheme':'powerlineish'}  "LightLine theme settings.

" Default  folding  settings..
" ============================

autocmd BufWinLeave * if expand("%") != "" | mkview | endif
autocmd BufWinEnter * if expand("%") != "" | loadview | endif

" Automatic reloading .vimrc
" ============================

autocmd! bufwritepost .vimrc source %

"Convert tex to UTF-8
" ===================
scriptencoding utf-8
set encoding=utf-8
setglobal termencoding=utf-8 fileencodings=

autocmd BufNewFile,BufRead  *   try
autocmd BufNewFile,BufRead  *   endtry
autocmd BufNewFile,BufRead  *   set encoding=utf-8

" Ignore filetypes which autorun vimrc
" ====================================

set wildignore+=*.a,*.o,*.so,*.pyc,.git
set wildignore+=*.jpg,*.png,*.gif,*.bmp,*.ico,*.pdf
set wildignore+=*.tmp,*.swp

" Vimrc Basic settings
" ====================

colorscheme gruvbox
filetype detect
filetype on
filetype plugin indent on
highlight ColorColumn ctermbg=0

set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set backupdir=/tmp//,.
set clipboard+=unnamedplus,unnamed
set colorcolumn=80
set complete+=kspell
set completeopt=menuone,longest
set cryptmethod=blowfish2
set directory=/tmp//,.
set encoding=utf-8
set expandtab smarttab
set fo-=t "do not wrap text automatically when typing
set formatoptions=tcqrn1
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set matchpairs+=<:> " Use % to jump between pairs
set mmp=5000
set modelines=2
set mouse=a
set nobackup
set nocompatible
set noerrorbells visualbell t_vb=
set noshiftround
set nospell
set nostartofline
set noswapfile
set nowritebackup
set number
set regexpengine=1
set ruler
set scrolloff=3
set shiftwidth=4
set shortmess+=c
set showcmd
set showmatch
set showmode
set smartcase
set softtabstop=2
set spelllang=en_us
set splitbelow
set tabstop=4
set termguicolors
set textwidth=0
set timeoutlen=650
set ttimeout
set ttyfast
set ttymouse=sgr
set undodir=/tmp
set undofile
set virtualedit=block
set whichwrap=b,s,<,>
set wildmenu
set wildmode=longest,list,full
set wrap
syntax on

" set cusorline and cursorcolumn
" ==============================
set cursorline
set cursorcolumn
highlight CursorLine ctermbg=Yellow cterm=NONE guibg=#303030
highlight CursorColumn ctermbg=Yellow cterm=NONE guibg=#303030

" leaderkey mapping
" =================

let mapleader=","

" Cursorcentered when insertmode
" ==============================

autocmd InsertEnter * norm zz

" Removing Trailing whitespace on save
" ====================================

autocmd BufWritePre * %s/\s\+$//e

" spell checking mapping
" ======================
map <F9> :setlocal spell! spelllang=en_us<CR>

" Global copy and paste Mapping
" =============================

vnoremap <C-c> "+y
nmap <C-p> "+p

" Global save & quite command
" ===========================

map <F4> :q!<CR>
inoremap <F5> <C-o>:w <CR>
map <F5> :w <CR>
map <F7> :set rnu!<CR>
inoremap <F7> <C-o>:set list!<CR>
inoremap <F8> <C-o>:Limelight!!<CR>

" Clear search highlights
" =======================

map <F6> :let @/=""<CR>

" Map for switching windows
" =========================

map <C-h> <C-w>h
map <C-j> <C-w>j

map <C-k> <C-w>k
map <C-l> <C-w>l

" Shortcut spliting window
" ========================

nnoremap <leader>h :split<Space>
nnoremap <leader>v :vsplit<Space>

" Visual mapping in Visual modes
" ==============================

xnoremap <C-h> <C-w>h
xnoremap <C-j> <C-w>j
xnoremap <C-k> <C-w>k
xnoremap <C-l> <C-w>l

" Move VISUAL LINE selection within buffer.
" =========================================

xnoremap <silent> K :call tenomax#visual#move_up()<CR>
xnoremap <silent> J :call tenomax#visual#move_down()<CR>

" Easier to Move Block Code Easier
" ================================
vnoremap < <gv
vnoremap > >gv

" Global search
" =============

map <leader>s :%s///gc<Left><Left><Left><Left>

" Map .vimrc and Sourceing vimrc
" ==============================

map <leader>ev :tabnew $MYVIMRC<CR>
map <leader>sv :source $MYVIMRC<CR>

" Set Function for Line Move Up Setting
" =====================================
"vigate the complete menu items like CTRL+n / CTRL+p would.
" =========================================================

inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" Select the complete menu item like CTRL+y would.
" ================================================
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"

" Cancel the complete menu item like CTRL+e would.
" ================================================
inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"

" Map arrow keys noting So i can use hjkl movement
" ================================================
" disabled Arrow keys
" ===================

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

let $LANG='en'

"Setting Env LANG Var to English
" ==============================

set langmenu=en

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"Sourcing Evrything ("Don't Why but You Need to Do It)

" Transparancy Function
" =====================

let t:is_transparent=0
nnoremap <F2> :call tenomax#maxfn#Toggle_transparent_background()<CR>

" Filemanager Ntree Mapping
" =========================

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
set autochdir
map <leader>e :Lexplore<CR>

let ghregex='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_list_hide=ghregex

" Additional Closing Qoutes or Braces in Insert Mode
" ==================================================

inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i

" SpellEroor
" ==========
nnoremap <leader>d :call tenomax#maxfn#SpellError()<CR>
" Headline
" ========
nnoremap <leader>hh :call tenomax#maxfn#HeadLine()<CR>

