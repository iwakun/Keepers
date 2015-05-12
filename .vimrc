""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

set nocompatible " turn off old vi compatibility
cd ~/Documents/Websites
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Backup information
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backup " turn on backups
" set nobackup
set backupdir=~/.vimbackup " set backup file directory
set directory=~/.vimbackup " set temp file directory
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
" set expandtab " uses spaces, not real tabs
set visualbell " flash screen instead of beep
set noerrorbells " no beeping on error
set ruler " shows location in status bar
set showcmd " shows command in status bar
set statusline=%F%m%r%h%w=%c,%l/%L\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\  
set laststatus=2 " show the status line
set lz " screen not redrawn during macro execution
set showmode " show what mode I'm in
set lsp=1 " space out the lines a little bit
set number " display line numbers
set noshowmatch " turn off the jump to last parenthesis
set display=lastline " shows as much of the last line as possible
set history=100 " command history stored
set hidden " keep buffers in memory
set spell " turn on spelling errors
set formatoptions+=m " Formatting for muli-byte characters (Japanese)

syntax on
set t_Co=256
let g:impact_transbg=1
if(has('gui_running'))
    colo lucius
    set lines=60
    set columns=225
    set gfn=Ubuntu\ Mono\ 12
	set guioptions-=T " Remove Toolbar
	set guioptions-=r " Remove right scrollbar
	set guioptions-=l " Remove left scrollbar
	set guioptions-=R " Remove left scrollbar
	set guioptions-=L " Remove left scrollbar
else
    colo impact
	set title " change the terminal's title
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding Options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable
set foldmethod=indent
set foldlevel=100
set foldopen-=search
set foldopen-=undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Key Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add /* */ to comment a line
map <C-F11> <Esc>I/*<Esc>A*/<Esc>
" Reverse the above
map <C-F12> <Esc>^xx$xx<Esc>
" Add <!-- --> to comment (X/HT)ML
map <C-F9> <Esc>I<!--<Esc>A--><Esc>
" Reverse the above
map <C-F10> <Esc>^xxxx$xxx<Esc>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Netrw Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:netrw_ftp_cmd="ftp -p"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Windows Manager Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on
autocmd BufNewFile,BufRead *.less set filetype=less
autocmd BufNewFile,BufRead *.ejs set filetype=html