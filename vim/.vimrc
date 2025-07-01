" ===========================================================================
" Andrea Colombo (AndreaTgc) - Minimalist Vim Configuration
" Purpose: Build a distraction-free, efficient environment for C development
" Philosophy: Minimal, focused, no plugin bloat, rely on core Unix tools
" Version: 0.2
" Date: 28-06-2025
" ===========================================================================

" ---------------------------------------------------------------------------
" General Settings
" ---------------------------------------------------------------------------

" Disable Vi compatibility to enable Vim features
set nocompatible

" Enable filetype detection, plugin, and indentation based on filetype
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Display line numbers
set number             " Absolute line number
set relativenumber     " Relative line numbers for easy line-based motions

" Cursor behavior
" set cursorline       " Uncomment to highlight current line (optional)

" ---------------------------------------------------------------------------
" Indentation and Tabs
" ---------------------------------------------------------------------------

set shiftwidth=4       " Indentation size for >> and <<
set tabstop=4          " Visual width of a tab character
set expandtab          " Convert tabs to spaces
set smartindent        " Smart auto-indenting for C-like languages
set autoindent         " Copy indentation from the current line

" ---------------------------------------------------------------------------
" Search Behavior
" ---------------------------------------------------------------------------

set path+=**           " allow searching down subfolders
set incsearch          " Incremental search: highlights as you type
set ignorecase         " Case insensitive search...
set smartcase          " ...unless capital letters are used
set showmatch          " Highlight matching brackets
set hlsearch           " Highlight search results (toggle with <leader>h)

" ---------------------------------------------------------------------------
" UI/Display Tweaks
" ---------------------------------------------------------------------------

set scrolloff=10       " Keep 10 lines visible above/below the cursor
set wildmenu           " Enhanced command-line completion
set wildmode=list:longest

set showmode           " Show current mode (e.g., -- INSERT --)
set laststatus=2       " Always show statusline

set mouse=a            " Enable mouse support (can disable if desired)

set termguicolors      " Enable true color support (if terminal supports it)
colorscheme atomic     " Safe default colorscheme (swap 'desert' as needed)

" ---------------------------------------------------------------------------
" Disabling Arrow Keys (Force Better Movements)
" ---------------------------------------------------------------------------

map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>

" ---------------------------------------------------------------------------
" Leader Key Remaps
" ---------------------------------------------------------------------------

let mapleader = " "    " Space as leader key

" Quick escape from insert mode using 'jj'
inoremap jj <Esc>

" File explorer (Netrw)
nnoremap <leader>e :Ex<CR>

" Split windows
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>ss :split<CR>

" Buffer navigation
nnoremap <leader>n :bnext<CR>
nnoremap <leader>p :bprevious<CR>

" Quick save, quit, and save+quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :x<CR>

" Clear search highlights
nnoremap <leader>h :nohlsearch<CR>

" ---------------------------------------------------------------------------
" C Development Workflow Enhancements
" ---------------------------------------------------------------------------

" Compile using Make
nnoremap <leader>m :make<CR>

" Quickfix navigation (after :make or :grep)
nnoremap <leader>cn :cnext<CR>
nnoremap <leader>cp :cprev<CR>
nnoremap <leader>co :copen<CR>
nnoremap <leader>cc :cclose<CR>

" Grep within the current directory (very basic search)
nnoremap <leader>g :grep 

" Automatically read files when changed externally (useful when switching between terminal/compiler)
set autoread
autocmd FocusGained,BufEnter * checktime

" Disable swap files and backups (optional — speeds things up, less clutter)
set noswapfile
set nobackup
set nowritebackup

" Highlight current line number (optional alternative to cursorline)
set cursorline

" ---------------------------------------------------------------------------
" Netrw File Explorer Tweaks (Optional)
" ---------------------------------------------------------------------------

let g:netrw_liststyle=3      " Tree-style view
let g:netrw_banner=0         " Remove banner
let g:netrw_winsize=25       " File explorer window size

" ---------------------------------------------------------------------------
" Tags Navigation (requires ctags to be generated)
" ---------------------------------------------------------------------------

set tags=./tags,tags         " Look for tags file in current and parent dirs

" Go to definition using tags
nnoremap <leader>gd :tag <C-R><C-W><CR>

" ---------------------------------------------------------------------------
" End of Configuration
" ===========================================================================

