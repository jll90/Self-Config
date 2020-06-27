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
"Pretty IDE-like icons
Plug 'ryanoasis/vim-devicons'

"GUI
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'machakann/vim-highlightedyank'
Plug 'vim-airline/vim-airline'

" Coc vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vim formatting
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Elixir formatting using native mix
Plug 'mhinz/vim-mix-format'

" Rainbow brackets
Plug 'frazrepo/vim-rainbow'

" Autocomplete brackets etc
Plug 'jiangmiao/auto-pairs'

" Comments 
Plug 'tpope/vim-commentary'

" Scss formatting
Plug 'cakebaker/scss-syntax.vim'
let g:coc_node_path = '/usr/local/Cellar/nvm/0.35.1/versions/node/v8.10.0/bin/node'

let g:coc_global_extensions = ['coc-emmet', 'coc-angular', 'coc-css', 'coc-elixir', 'coc-html', 'coc-solargraph', 'coc-tsserver', 'coc-python']
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

se mouse+=a

map <C-p> :Files<CR>

set cmdheight=2

let g:mix_format_on_save = 1

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <expr> <F6> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm,js}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

"navigate splits using alt+key
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" https://github.com/ryanoasis/vim-devicons/wiki/Installation
" when using on Ubuntu check this url
set encoding=utf8
" Must match terminal
set guifont=Hack_Nerd_Font:h12


