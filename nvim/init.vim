" osx may need to install pip3 install pynvim

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
Plug 'morhetz/gruvbox'
Plug 'crusoexia/vim-monokai'

Plug 'tpope/vim-surround'
" All around git support
Plug 'tpope/vim-fugitive'

" Git commit history
Plug 'rhysd/git-messenger.vim'

" Git changes
Plug 'airblade/vim-gitgutter'

"File Tree Navigation
Plug 'preservim/nerdtree'
"Pretty IDE-like icons
Plug 'ryanoasis/vim-devicons'

"GUI
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
" coc-yank does this now
" Plug 'machakann/vim-highlightedyank'
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

" Snippets
Plug 'honza/vim-snippets'

if !empty($NODE_CUSTOM_PATH_VIM)
  let g:coc_node_path = '/usr/local/Cellar/nvm/0.35.1/versions/node/v8.10.0/bin/node'
end

" https://github.com/neoclide/coc-yank
let g:coc_global_extensions = ['coc-snippets', 'coc-emmet', 'coc-angular', 'coc-css', 'coc-elixir', 'coc-html', 'coc-solargraph', 'coc-tsserver', 'coc-python', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-docker']
" Initialize plugin system
call plug#end()

syntax on
colorscheme onedark
" colorscheme gruvbox
" colorscheme monokai

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

nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>
" https://github.com/ryanoasis/vim-devicons/wiki/Installationr
" when using on Ubuntu check this url
set encoding=utf8
" Must match terminal
" set guifont=DroidSansMono\ Nerd\ Font\ Mono\ Book\ 12
set guifont=$NVIM_FONT

" coc-snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

" Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" Close splits with ctrl+c
nnoremap <C-c> :bp\|bd #<CR>

fun! PullAndRefresh()
  set noconfirm
  " !git pull
  bufdo e!
  set confirm
endfun

nnoremap <expr> <F5>call PullAndRefresh()
