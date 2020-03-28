call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" FZF
" This line may not be needed
Plug '/usr/local/bin/fzf'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'elixir-editors/vim-elixir'

"Support for a lot of languages
Plug 'sheerun/vim-polyglot'

"Visual Theme
Plug 'joshdick/onedark.vim'

Plug 'tpope/vim-surround'

"Git changes
Plug 'airblade/vim-gitgutter'

"File Tree Navigation
Plug 'preservim/nerdtree'

"GUI
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'machakann/vim-highlightedyank'

" Coc vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vim formatting
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Elixir formatting using native mix
Plug 'mhinz/vim-mix-format'

" Rainbow brackets
Plug 'frazrepo/vim-rainbow'

let g:coc_node_path = '/usr/local/Cellar/nvm/0.35.1/versions/node/v8.10.0/bin/node'

" Initialize plugin system
call plug#end()

colorscheme onedark
set number
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2

set undodir=~/.vimdid
set undofile

set splitright
set splitbelow

nnoremap <up> <nop>
nnoremap <down> <nop>

" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

vnoremap <C-h> :nohlsearch<cr>
nnoremap <C-h> :nohlsearch<cr>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

map <C-p> :Files<CR>

set cmdheight=2

let g:mix_format_on_save = 1

nnoremap <silent> <expr> <F6> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"
