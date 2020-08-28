" ======================================
" This is My Neovim configuration file
" Maintainer :Manu Manohar
" Year : 27-08-2020
" Youtube Channel: Manu Manohar
" GitHub :tenomax-hash
" ======================================

" =======================================================
" Set the Runtime Path to Include Vundle and Initialize
" =======================================================

set rtp+=~/.config/nvim/bundle/Vundle.vim
set path+=**

" ===========================
" Automatic Reloading Vimrc
" ===========================

autocmd! bufwritepost init.vim source %
autocmd InsertEnter * norm zz
autocmd BufWritePre * %s/\s\+$//e
" =========================================
call vundle#begin()            " required
" =========================================

Plugin 'VundleVim/Vundle.vim'  " required
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dracula/vim'
Plugin 'dylanaraps/wal'
Plugin 'easymotion/vim-easymotion'
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

" ==========================================
call vundle#end()               " required
" ==========================================

" =============
" Colorscheme
" =============

colorscheme ayu
filetype plugin indent on       " required
set nocompatible               " be improved, required
filetype detect                   " required
syntax on

" ==================================
" Set Cursorline and Cursor Column
" ==================================
set cursorline
set cursorcolumn
hi CursorLine ctermbg=Yellow cterm=None guibg=#303030
hi CursorColumn ctermbg=Yellow cterm=None guibg=#303030

" ================
" Basic Settings
" ================

set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set backupdir=/tmp//,.
set clipboard+=unnamedplus,unnamed
set colorcolumn=80
set complete+=kspell
set completeopt=menuone,longest
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
set softtabstop=4
set spelllang=en_us
set splitbelow
set tabstop=4
set termguicolors
set textwidth=0
set timeoutlen=650
set ttimeout
set ttyfast
set undodir=/tmp
set undofile
set virtualedit=block
set whichwrap=b,s,<,>
set wildmenu
set wildmode=longest,list,full
set wrap

" ====================
" Myleaderkey Setups
" ====================

let mapleader=","
nnoremap <leader>ev :tabnew $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
map <leader>s :update<cr>
nmap <leader>hh :call Headding()<cr>
nmap <leader>x :FZF <cr>

" =======================
" Global Save and Quite
" =======================

nmap <F3> :set rnu!<cr>
map <F4> :q!<cr>
map <F5> :w <cr>
map <F6> :let @/=""<cr>
inoremap <F7> <c-o>:set list!<cr>
map <F9> :setlocal spell! spelllang=en_us <cr>

" ======================
" Training Your Finger
" ======================

inoremap jk <Esc>

" ====================
" Map Switch Windows
" ====================

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <A-p> :tabp<cr>
map <A-n> :tabn<cr>

" ================================
" Visual Mapping in Visual Modes
" ================================

xnoremap <C-h> <C-w>h
xnoremap <C-j> <C-w>j
xnoremap <C-k> <C-w>k
xnoremap <C-l> <C-w>l

" ========================
" Visual Line Movementes
" ========================

xnoremap <silent> K :call tenomax#visual#move_up()<CR>
xnoremap <silent> J :call tenomax#visual#move_down()<CR>

" ============================
" Easier to Block Code Move
" ============================
vnoremap < <gv
vnoremap > >gv

" ======================================
" Additional Closing Qoutes and Braces
" ======================================

inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap <tab><tab> <esc><right><right>i

" =======================
" Global copy and Paste
" =======================
vnoremap <C-c> "+y
nmap <C-p> "+p

" ==========
" Spelleroor
" ==========
nnoremap <leader>d :call tenomax#maxfn#SpellError()<CR>

" ========
" Headline
" ========
nnoremap <leader>hh :call tenomax#maxfn#HeadLine()<CR>

" ==============================
" Ale Linters and Fixers Error
" ==============================

let g:ale_linters={'python':['flake8']}
let g:ale_fixers={'*':[],'python':['black','isort']}
let g:ale_fix_on_save = 1

" ====================================
" ignore Filetypes Which Autorun Vimrc
" ====================================

set wildignore+=*.a,*.o,*.so,*.pyc,.git
set wildignore+=*.jpg,*.png,*.gif,*.bmp,*.ico,*.pdf
set wildignore+=*.tmp,*.swp

" ======================
" convert tex to UTF-8
" ======================

scriptencoding utf-8
set encoding=utf-8
setglobal termencoding=utf-8 fileencodings=

autocmd BufNewFile,BufRead  *   try
autocmd BufNewFile,BufRead  *   endtry
autocmd BufNewFile,BufRead  *   set encoding=utf-8

" ========================
" Ale Linters and fixers
" ========================

let g:ale_linters={'python':['flake8']}
let g:ale_fixers={'*':[],'python':['black','isort']}
let g:ale_fix_on_save = 1


" =======
" Netrw
" =======
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
    noremap <buffer> <A-l> <C-w>l
    noremap <buffer> <C-l> <C-w>l
    noremap <silent> <A-f> :call ToggleNetrw()<CR>
    noremap <buffer> V :call OpenToRight()<cr>
    noremap <buffer> H :call OpenBelow()<cr>
    noremap <buffer> T :call OpenTab()<cr>
endfunction

augroup netrw_mappings
    autocmd!
    autocmd filetype netrw call NetrwMappings()
augroup END

" Allow for netrw to be toggled
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

" Check before opening buffer on any file
function! NetrwOnBufferOpen()
  if exists('b:noNetrw')
      return
  endif
  call ToggleNetrw()
endfun

" Close Netrw if it's the only buffer open
autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif

" Make netrw act like a project Draw
augroup ProjectDrawer
  autocmd!
  	" Don't open Netrw
  autocmd VimEnter ~/.config/joplin/tmp/*,/tmp/calcurse*,~/.calcurse/notes/*,~/vimwiki/*,*/.git/COMMIT_EDITMSG let b:noNetrw=1
  autocmd VimEnter * :call NetrwOnBufferOpen()
augroup END

let g:NetrwIsOpen=0

" =======
" Endline
" =======
