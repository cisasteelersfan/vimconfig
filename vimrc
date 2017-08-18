" Colby Rome
" 10/16/15
" Updated 6/22/16

set nocompatible        "use Vim settings rather than Vi

filetype plugin indent on "Enable file detection
colorscheme slate
syntax enable           "enable syntax processing
au BufRead,BufNewFile *.pde set filetype=arduino tabstop=4 softtabstop=4 expandtab cindent
au BufRead,BufNewFile *.ino set filetype=arduino tabstop=4 softtabstop=4 expandtab cindent
set tabstop=4           "number of visual spaces per Tab
set softtabstop=4       "number of spaces in tab when editing
set expandtab           "tabs are spaces
set colorcolumn=80      "Color at column 80
set shiftwidth=4        "Auto indent is 4 spaces to indent

"UI Config
set number         		"show line numbers
set showcmd             "show command in bottom bar
set cursorline          "highlight current line
filetype indent on      "load filetype-specific indent files
set wildmenu            "visual autocomplete for command menu
set lazyredraw          "redraw only when we need to
set showmatch           "highlight matching [{()}]

"Searching
set incsearch           "search as characters are entered
set hlsearch            "highlight matches
" turn off search highlight:
:let mapleader=","      "leader is comma
nnoremap <leader><space> :nohlsearch<CR>

"Folding
set foldenable          "enable folding
set foldlevelstart=10   "open most folds by default
set foldnestmax=10      "10 nested fold max
nnoremap <space> za     "space open/closes folds
set foldmethod=indent    "fold based on indent level

"Movement
"-->causing problems...
"nnoremap j gj           "Move vertically by visual line
nnoremap gV `[v`]       "highlight last inserted text

"Saving
nnoremap <leader>s :mksession<CR>   "save session. Reopen with vim -S (super saving)
cmap w!! w !sudo tee > /dev/null %   "Allow saving of files as sudo when I forget to start vim using sudo

" various settings
set autoindent                 " Minimal automatic indenting for any filetype.
set ruler                      " Shows the current line number at the bottom.
                               " right of the screen.
set wildmenu                   " Great command-line completion, use '<Tab>' to
                               " move around and '<CR>' to validate.

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
