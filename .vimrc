" Uncomment the next line to make Vim more Vi-compatible
set nocompatible

" Backup, swap, undo
set backup
set backupdir=~/.vim-backup
set swapfile
set directory=~/.vim-swap
set undofile
set undodir=~/.vim-undo
set writebackup

" 80 Columns + Line Numbers
" au BufRead * let &numberwidth = float2nr(log10(line("$"))) + 2
"          \| let &columns = &numberwidth + 80

" Tabs as spaces, general tab config
set expandtab
set tabstop=2
set sw=2

" Default yank to host clipboard
set clipboard=unnamed

" Colorschemes @ ~/.vim/colors
colorscheme monokai

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Stop that stupid window
map q: :q

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
 au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
set number              " Enable line numbers
set cursorline          " Highlight current line
set title               " Show the filename in the window titlebar

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Spellcheck
set spell

" show tabs and trailing spaces
set listchars=tab:»·,trail:·

" Enable completion where available.
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1

" filetypes
au BufRead,BufNewFile *.pp set ft=puppet
au BufRead,BufNewFile *.json set ft=json
au BufRead,BufNewFile *.yaml set ft=yaml
au BufRead,BufNewFile *.yml set ft=yaml

