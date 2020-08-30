" =======================================
" Created by :- Manu Manohar Elegant Artz
" YouTube Channel:manu Manohar
" Maintainer : Manu Manohar
" Year : 20-06-2020
" =======================================

" =================================
" Path adding to the system level
" =================================

set rtp+=~/.vim/bundle/Vundle.vim
" set path+=$VIMRUNTIME
set path+=**
set rtp+=~/Documents/vim-myplug

" =================
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
Plugin 'nvie/vim-flake8'
Plugin 'dense-analysis/ale'
Plugin 'junegunn/fzf' "fuzzy file search
call vundle#end()

let g:lightline={'colorscheme':'powerlineish'}  "LightLine theme settings.

" ==============================
" Default  Folding  Settings..
" ==============================

autocmd BufWinLeave * if expand("%") != "" | mkview | endif
autocmd BufWinEnter * if expand("%") != "" | loadview | endif

" ============================
" Automatic Reloading .Vimrc
" ============================

autocmd! bufwritepost .vimrc source %

" =====================
"Convert tex to UTF-8
" =====================

scriptencoding utf-8
set encoding=utf-8
setglobal termencoding=utf-8 fileencodings=

autocmd BufNewFile,BufRead  *   try
autocmd BufNewFile,BufRead  *   endtry
autocmd BufNewFile,BufRead  *   set encoding=utf-8


" ======================================
" Ignore Filetypes Which Autorun Vimrc
" ======================================


set wildignore+=*.a,*.o,*.so,*.pyc,.git
set wildignore+=*.jpg,*.png,*.gif,*.bmp,*.ico,*.pdf
set wildignore+=*.tmp,*.swp

" ======================
" Vimrc Basic settings
" ======================


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
" set timeoutlen=650
" set ttimeout
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

" ================================
" Set Cusorline and Cursorcolumn
" ================================

set cursorline
set cursorcolumn
highlight CursorLine ctermbg=Yellow cterm=NONE guibg=#303030
highlight CursorColumn ctermbg=Yellow cterm=NONE guibg=#303030

" ===================
" Leaderkey Mapping
" ===================


let mapleader=","
let maplocalleader="_"

" ================================
" Cursorcentered When Insertmode
" ================================


autocmd InsertEnter * norm zz

" ======================================
" Removing Trailing Whitespace on Save
" ======================================


autocmd BufWritePre * %s/\s\+$//e

" ===============================
" Global Copy and Paste Mapping
" ===============================

vnoremap <C-c> "+y
nmap <C-p> "+p

" =============================
" Global Save & Quite Command
" =============================

let t:is_transparent=0 "Transparancy settings
nnoremap <F2> :call tenomax#maxfn#Toggle_transparent_background()<CR>

map <F4> :q!<CR>
inoremap <F5> <C-o>:w <CR>
map <F5> :w <CR>
nnoremap <F6> :let @/=""<CR>
nmap <F3> :set rnu!<CR>
inoremap <F7> <C-o>:set list!<CR>
inoremap <F8> <C-o>:Limelight!!<CR>
map <F9> :setlocal spell! spelllang=en_us<CR>

" ======================
" Training your Finger
" ======================

inoremap jk <esc>

" inoremap <esc> <nop>
" ===========================
" Map for Switching Windows
" ===========================


map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" ==========================
" Shortcut Spliting Window
" ==========================

nnoremap <leader>h :split<Space>
nnoremap <leader>v :vsplit<Space>

" ================================
" Visual Mapping in Visual Modes
" ================================

xnoremap <C-h> <C-w>h
xnoremap <C-j> <C-w>j
xnoremap <C-k> <C-w>k
xnoremap <C-l> <C-w>l

" ===========================================
" Move VISUAL LINE Selection Within Buffer.
" ===========================================

xnoremap <silent> K :call tenomax#visual#move_up()<CR>
xnoremap <silent> J :call tenomax#visual#move_down()<CR>

" ==================================
" Easier to Move Block Code Easier
" ==================================
vnoremap < <gv
vnoremap > >gv

" =======================
" Using Leader Mappings
" =======================

map <leader>s :update<cr>
map <leader>fs :%s///gc<Left><Left><Left><Left>

" ================================
" Map .vimrc and Sourceing vimrc
" ================================

nnoremap <leader>ev :tabnew $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

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
" disabled Arro keys
" ===================

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

let $LANG='en'

" ================================
"Setting Env LANG Var to English
" ================================

set langmenu=en

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" ======================================================
"Sourcing Evrything ("Don't Why but You Need to Do It)


" ====================================================
" Additional Closing Qoutes or Braces in Insert Mode
" ====================================================

inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i

" =======================================
" This for Exit Cursor Positon to right
" =======================================
inoremap <tab><tab> <esc><right><right>i

" ============
" SpellError
" ============
nnoremap <leader>d :call tenomax#maxfn#SpellError()<CR>

" ==============================
" Ale linters and Fixers error
" ==============================

let g:ale_linters={'python':['flake8']}
let g:ale_fixers={'*':[],'python':['black','isort']}
let g:ale_fix_on_save = 1

" ===================
" fuzzy file search
" ===================
nnoremap <leader>x :FZF <cr>

" ===================================================================
"                             Netrw
" ===================================================================

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20

function! OpenToRight()
  :normal v
  let g:path=expand('%:p')
  :q!
  execute 'belowright vnew' g:path
  :normal <C-w>l
endfunction

function! OpenBelow()
  :normal v
  let g:path=expand('%:p')
  :q!
  execute 'belowright new' g:path
  :normal <C-w>l
endfunction

function! OpenTab()
  :normal v
  let g:path=expand('%:p')
  :q!
  execute 'tabedit' g:path
  :normal <C-w>l
endfunction

function! NetrwMappings()
    " Hack fix to make ctrl-l work properly
    noremap <buffer> <M-l> <C-w>l
    noremap <buffer> <C-l> <C-w>l
    noremap <silent> <leader>e :call ToggleNetrw()<CR>
    noremap <buffer> V :call OpenToRight()<cr>
    noremap <buffer> H :call OpenBelow()<cr>
    noremap <buffer> T :call OpenTab()<cr>
endfunction

augroup netrw_mappings
    autocmd!
    autocmd filetype netrw call NetrwMappings()
augroup END

" ===============================
" Allow for netrw to be toggled
" ===============================
function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

" =========================================
" Check before opening buffer on any file
" =========================================
function! NetrwOnBufferOpen()
  if exists('b:noNetrw')
      return
  endif
  call ToggleNetrw()
endfun

" ==========================================
" Close Netrw if it's the only buffer open
" ==========================================
autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif

" Make netrw act like a project Draw
augroup ProjectDrawer
  autocmd!
  	" Don't open Netrw
  autocmd VimEnter ~/.config/joplin/tmp/*,/tmp/calcurse*,~/.calcurse/notes/*,~/vimwiki/*,*/.git/COMMIT_EDITMSG let b:noNetrw=1
  autocmd VimEnter * :call NetrwOnBufferOpen()
augroup END

let g:NetrwIsOpen=0
let ghregex='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_list_hide=ghregex

" =====================================
" run only Python files opens command
" =====================================

autocmd FileType python nnoremap <buffer> <localleader>r :! python %<cr>
" ===================
" Headline comments
" ===================

nnoremap <leader>h :MakeBelowUnderLine<cr>
nnoremap <leader>H :MakeAboveUnderLine<cr>

" =========
" Endline
" =========
