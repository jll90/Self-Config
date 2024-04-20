call plug#begin('~/.vim/plugged')

" Can try these plugs some day
" Plug 'mg979/vim-visual-multi'
" Plug 'junegunn/vim-easy-align'

 " Both of these need to be installed
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Elixir language support
Plug 'elixir-editors/vim-elixir'
" Elixir formatting using native mix
Plug 'mhinz/vim-mix-format', {'for': 'elixir'}

" Support for a lot of languages
Plug 'sheerun/vim-polyglot'

" Change surrounds
Plug 'tpope/vim-surround'
" All around git support
Plug 'tpope/vim-fugitive'
"Vim sessions
Plug 'tpope/vim-obsession'

" Git commit history
Plug 'rhysd/git-messenger.vim'

" Git changes
Plug 'airblade/vim-gitgutter'

" File Tree Navigation
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
" Pretty IDE-like icons
Plug 'ryanoasis/vim-devicons'

 " Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Coc vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vim formatting
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

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
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" Rubocop
Plug 'ngmy/vim-rubocop'

 " blame
Plug 'APZelos/blamer.nvim'

 " CSS syntax highlighting
Plug 'ap/vim-css-color'

 " Rspec Integration
Plug 'thoughtbot/vim-rspec'

 " support for prisma schema files
Plug 'pantharshit00/vim-prisma'

 " theme
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" Initialize plugin system
call plug#end()

let mapleader = "," " map leader to comma

" https://github.com/neoclide/coc-yank
let g:coc_global_extensions = ['coc-snippets', 'coc-emmet', 'coc-css', 'coc-elixir', 'coc-html', 'coc-solargraph', 'coc-tsserver', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-docker', 'coc-rust-analyzer', 'coc-lua', 'coc-yaml', 'coc-sql', 'coc-go', 'coc-tabnine', 'coc-julia', 'coc-eslint', 'coc-prisma']

syntax on
set number

set t_Co=256
set cursorline

if (has("termguicolors"))
 set termguicolors
endif

colorscheme catppuccin

set encoding=utf8

set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2

set undodir=~/.vimdid
set undofile

set splitright
set splitbelow

set updatetime=300
set hidden

set cmdheight=3
" Must match terminal
" set guifont=DroidSansMono\ Nerd\ Font\ Mono\ Book\ 12
set guifont=$NVIM_FONT

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
map <C-s> :w<CR>

let g:mix_format_on_save = 1

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
" nnoremap <leader>tr g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"
nnoremap <leader>tr :NERDTreeToggle<CR>

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

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" nmap <leader>fmt :Prettier<CR>
" nmap <leader>fmt <Plug>(coc-format-selected) 
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)
nnoremap <leader>f :call CocAction('format') <CR>
nnoremap <leader>l :CocCommand eslint.executeAutofix<CR>
" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>qf <Plug>(coc-fix-current)

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

let g:airline_theme='onehalfdark'
" airline shows buffers up top when there's one tab open
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#tabline#formatter = 'default'

let g:blamer_enabled = 1
let g:blamer_delay = 300
let g:blamer_prefix = ' > '

" RSpec.vim mappings
map <Leader>rss :call RunCurrentSpecFile()<CR>
map <Leader>rsc :call RunNearestSpec()<CR>
map <Leader>rsl :call RunLastSpec()<CR>
map <Leader>rsa :call RunAllSpecs()<CR>

let g:rspec_command = "!bundle exec spring rspec {spec}"

" Allows for scrolling inside floating windows
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)
