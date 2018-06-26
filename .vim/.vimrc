""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')
Plug 'kana/vim-textobj-user' " Custom User Objects
Plug 'whatyouhide/vim-textobj-xmlattr' " xml attributes as text object
Plug 'tpope/vim-surround' " adding surrounding selection
Plug 'tmhedberg/matchit' " use % to jump to matching html tag
Plug 'scrooloose/nerdtree' " better file explorer
Plug 'itchyny/lightline.vim' " pretty status line
Plug 'ntpeters/vim-better-whitespace' " Highlight trailing whitespace
Plug 'ctrlpvim/ctrlp.vim' " Open files through search
Plug 'tpope/vim-fugitive' " Git functions
Plug 'tpope/vim-unimpaired' " Useful commands
Plug 'EinfachToll/DidYouMean' " Suggests alternatives for empty filenames
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Autocomplete
"syntax
Plug 'groenewege/vim-less'
Plug 'StanAngeloff/php.vim'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'posva/vim-vue'
"themes
Plug '29decibel/codeschool-vim-theme'
Plug 'ciaranm/inkpot'
Plug 'jonathanfilip/vim-lucius'
Plug 'junegunn/seoul256.vim'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'jacoborus/tender.vim'
call plug#end()

cd ~/Programming

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Backup information
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backup " turn on backups
set backupdir=~/.config/nvim/backup " set backup file directory
set directory=~/.config/nvim/backup " set temp file directory

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch " search while typing
set nohlsearch " don't highlight the search pattern
set ignorecase smartcase " case insensitive search unless case specified
set wrapscan " wraps to beginning from end

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Formatting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start " allow backspace over more than current line
set binary noeol " used if editing a binary file
set fileformat=unix " set proper <return> options
set nowrap " don't wrap lines
set autoindent
set tabstop=4 shiftwidth=4 softtabstop=4 " tabs set
"set expandtab " uses spaces, not real tabs
set noexpandtab " use real tabs, not spaces
set visualbell " flash screen instead of beep
set noerrorbells " no beeping on error
set ruler " shows location in status bar
set showcmd " shows command in status bar
set laststatus=2 " show the status line
set listchars=tab:»\ ,trail:-,extends:>,precedes:<,nbsp:+ " how whitespace characters should look
set showmode " show what mode I'm in
set lsp=1 " space out the lines a little bit
set number " display line numbers
set relativenumber " display relative line numbers
set noshowmatch " turn off the jump to last parenthesis
set display=lastline " shows as much of the last line as possible
set history=100 " command history stored
set hidden " keep buffers in memory
" set nospell " turn off spelling errors (doesn't look great with most themes in terminals)
set spell " turn on spelling errors
set formatoptions+=m " Formatting for multi-byte characters (Japanese)
set diffopt+=vertical " Vertical split when diffing
set lazyredraw " Don't redraw when executing macros
set scrolloff=3 " Don't let the cursor touch the edge of the viewport

syntax on
let g:javascript_enable_domhtmlcss = 1

if has('nvim')
    set termguicolors
endif
set t_Co=256
set background=dark
colo tender
let g:tender_lightline = 1
let g:lightline = { 'colorscheme': 'tender' }
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 0
set title " change the terminal's title
if has('mouse')
    set mouse=a
endif
" Set underline for misspelling
hi SpellBad guifg=#f43753 ctermfg=203 guibg=NONE ctermbg=NONE gui=undercurl cterm=underline

" Autocomplete
let g:deoplete#enable_at_startup = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding Options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable
set foldmethod=indent
set foldlevel=100
set foldopen-=search
set foldopen-=undo

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Windows Manager Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on
filetype plugin indent off

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<Space>"
" 2 is for 2 spaces
nnoremap <leader>2 :set tabstop=2<CR>:set shiftwidth=2<CR>:set softtabstop=2<CR>:set expandtab<CR>
" 4 is for 4 spaces
nnoremap <leader>4 :set tabstop=4<CR>:set shiftwidth=4<CR>:set softtabstop=4<CR>:set expandtab<CR>
" t is for tabs
nnoremap <leader>t :set tabstop=4<CR>:set shiftwidth=4<CR>:set softtabstop=4<CR>:set noexpandtab<CR>
" s is for spaces
nnoremap <leader>s :set tabstop=4<CR>:set shiftwidth=4<CR>:set softtabstop=4<CR>:set expandtab<CR>
" r is for retab (2 space to 4 space conversion)
nnoremap <leader>r :%s/^\s*/&&<CR>
vnoremap <silent> <leader>r :s/^\s*/&&/<CR>
" u is for un-tab (4 space to 2 space conversion)
nnoremap <leader>u :%s/ {4}/  /g<CR>
vnoremap <silent> <leader>u :s/ {4}/  /g<CR>
" m is for ^M that gets removed
nnoremap <leader>m :%s/<C-v><C-m>//g<CR>
" ' is for what gets removed
nnoremap <leader>' :s/'/"/g<CR>
" l is for li tag
nnoremap <leader>l I<li><esc>A</li><esc>j
" p is for paragraph tag
nnoremap <leader>p I<p><esc>A</p><esc>j
" = is for what gets inserted
nnoremap <leader>= :%s/php echo/=/g<CR>
" c is for clean
nnoremap <leader>c :%retab!<CR>:StripWhitespace<CR>