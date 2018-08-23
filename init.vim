set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

call plug#begin('~/.vim/plugged')
" must use single-quotes in this section

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'chriskempson/base16-vim'

Plug 'editorconfig/editorconfig-vim'
Plug 'Chiel92/vim-autoformat'
Plug 'wincent/terminus'
Plug 'christoomey/vim-tmux-navigator'

Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'

Plug 'sheerun/vim-polyglot'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
  nnoremap <C-f> :Ag<cr>
  nnoremap <C-p> :FZF<cr>

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  nnoremap <S-tab> :NERDTreeToggle <Enter>

Plug 'vim-airline/vim-airline'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamemod = ':t'

Plug 'Yggdroot/indentLine'
  let g:indentLine_setColors = 0

Plug 'w0rp/ale'
  let g:ale_lint_on_text_changed = 'normal'
  let g:ale_lint_on_insert_leave = 1

  let g:ale_linters = {
        \ 'typescript': ['tslint', 'tsserver', 'typecheck'],
        \ 'typescriptreact': ['tslint', 'tsserver', 'typecheck'],
        \}

  let g:ale_fixers = {
        \ 'javascript': ['prettier'],
        \ 'jsx': ['prettier'],
        \ 'typescript': ['prettier'],
        \ 'typescriptreact': ['prettier']
        \}

  let g:ale_linter_aliases = { 'typescriptreact': 'typescript' }
  let g:ale_fix_on_save=1

Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'ianks/vim-tsx'

Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

if has('nvim')
  Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
    let g:nvim_typescript#diagnosticsEnable = 0

  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    let g:deoplete#file#enable_buffer_path = 1
    let g:deoplete#enable_at_startup = 1
endif

call plug#end()

""" general things
set backspace=indent,eol,start
set autoread
set history=1000
set swapfile
set dir=~/tmp
set backupdir=~/tmp//
set title
set gdefault
syntax on
filetype plugin indent on
set number
set statusline=%f

""" splits open on bottom and right
set splitbelow
set splitright

""" Indentations
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

let mapleader = ","

vnoremap <BS> d

"" Searching / moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set scrolloff=2
set incsearch
set hlsearch
nnoremap <leader><space> :noh<cr>

"" // Searches for selected text
" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

"" External clipboard register
nnoremap <leader>c "*
vnoremap <leader>c "*

"" Line-wrapping
set nowrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"" Tabs
nnoremap <leader><tab> :tabedit<cr>

"" Navigate split panes
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"" Buffers
set hidden
nmap <leader>T :enew<cr>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>q :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>

"" Move vertically across visual lines, not actual lines
nnoremap j gj
nnoremap k gk

" edit file in current low level directory
nnoremap <Leader>e :e <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <Leader>v :vsp <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <Leader>s :sp <C-R>=expand('%:p:h') . '/'<CR>

" enter command without shift
nnoremap ; :

"" Auto-save
au FocusLost * :wa

"" Get out of insert mode quick
inoremap jj <ESC>

"" Vertical split shortcut
nnoremap <leader>w <C-w>v<C-w>l

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby
