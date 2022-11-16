set number

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

set mouse=a
syntax on
set cursorline
set modifiable

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

let mapleader = ","

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <leader>v <C-w>v 
nnoremap <leader>h <C-w>s

noremap <leader>h <C-w>h
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k
noremap <leader>l <C-w>l
" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')
    
    Plug 'preservim/nerdtree'
    Plug 'morhetz/gruvbox'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install()}}
    Plug 'junegunn/fzf.vim'
    Plug 'tomlion/vim-solidity'

call plug#end()

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.
" NERDTree
nmap <silent> <leader>t :NERDTreeToggle<CR>

" Coc
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" FZF key bindings
nnoremap <leader>ff :FZF<CR>
nnoremap <leader>fp :Files<CR>
nnoremap <leader>fb :Buffers<CR>
" }}}



" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ Percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}

" Coc Settings
let g:coc_global_extensions = ['coc-solidity', 'coc-tsserver', 'coc-prettier', 'coc-eslint']

" VIM Theme
set bg=dark
set term=xterm-256color
let g:gruvbox_contract_dark="soft"
autocmd vimenter * ++nested colorscheme gruvbox

if filereadable("./cscope.out")
    cs add scope.out
endif
