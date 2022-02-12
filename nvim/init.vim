" osx may need to install pip3 install pynvim
" source $HOME/.config/nvim/themes/lucario.vim

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

Plug 'tpope/vim-surround'
" All around git support
Plug 'tpope/vim-fugitive'
"Vim sessions
Plug 'tpope/vim-obsession'

" Git commit history
Plug 'rhysd/git-messenger.vim'

" Git changes
Plug 'airblade/vim-gitgutter'

"File Tree Navigation
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
"Pretty IDE-like icons
Plug 'ryanoasis/vim-devicons'

"GUI
" Plug 'itchyny/lightline.vim'
" Plug 'w0rp/ale'
" coc-yank does this now
" Plug 'machakann/vim-highlightedyank'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Coc vim
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Vim formatting
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Elixir formatting using native mix
Plug 'mhinz/vim-mix-format', {'for': 'elixir'}

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

" Relative numbers
Plug 'myusuf3/numbers.vim'

" Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install', 'for': 'markdown'  }

" For purify theme
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'crusoexia/vim-monokai'
Plug 'ngmy/vim-rubocop'

 " blame
Plug 'APZelos/blamer.nvim'

Plug 'ap/vim-css-color'

Plug 'mg979/vim-visual-multi'

let mapleader = "," " map leader to comma

" https://github.com/neoclide/coc-yank
let g:coc_global_extensions = ['coc-snippets', 'coc-emmet', 'coc-angular', 'coc-css', 'coc-elixir', 'coc-html', 'coc-solargraph', 'coc-tsserver', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-docker', 'coc-rls', 'coc-rust-analyzer', 'coc-lua', 'coc-yaml', 'coc-sql', 'coc-vetur', 'coc-go', 'coc-tabnine', 'coc-julia']

" Initialize plugin system
call plug#end()

syntax on
set number

set t_Co=256
set cursorline

if (has("termguicolors"))
 set termguicolors
endif

" colorscheme onedark
" colorscheme gruvbox
" colorscheme monokai
" colorscheme molokai
" colorscheme purify
" colorscheme lucario
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

" colorscheme OceanicNext
" let g:airline_theme='oceanictext'

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

" se mouse+=a

map <C-p> :Files<CR>
map <C-s> :w<CR>

set cmdheight=3
" set foldmethod=syntax
" set foldlevelstart=2

let g:mix_format_on_save = 1

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
" nnoremap <leader>tr g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"
nnoremap <leader>t :NERDTreeToggle<CR>

let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm,js}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

" let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
" let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

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

nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

nmap <leader>fmt :Prettier<CR>
nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>qf <Plug>(coc-fix-current)

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" airline shows buffers up top when there's one tab open
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#tabline#formatter = 'default'

" let g:airline_theme='simple'
"
let g:LanguageClient_rootMarkers = ['*.cabal', 'stack.yaml']

let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_prefix = ' > '

set updatetime=300
" nmap <Esc> :call coc#float#close_all() <CR>
"
set hidden

let g:ale_completion_autoimport = 1
