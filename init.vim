set hlsearch
set incsearch
set cursorline
set relativenumber
set number
set shiftwidth=4
set showmatch
set autowrite
set backspace=2
set encoding=utf-8
set ignorecase
set mouse=a
set nocompatible
set smartcase
set smartindent

set title
set lazyredraw
set tabstop=4
set smarttab
set expandtab
set autoindent
set updatetime=100
set laststatus=2
set t_Co=256

if executable('ag')
    let g:ackprg='ag --vimgrep'
endif

let g:python_highlight_all=1
let g:indentLine_setColors=1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:neoformat_python_autopep8={
    \ 'ex': 'autopep8',
    \ 'args': ['-s 4', '-E'],
    \ 'replace': 1,
    \ 'stdin': 1,
    \ 'env': ["DEBUG=1"],
    \ 'valid_exit_codes': [0, 23],
    \ 'no_append': 1
    \ }

let g:neoformat_enabled_python = ['autopep8', 'yapf']
let g:airline#extension#tabline#enabled = 1
let g:airline#extension#tabline#left_sep = ' '
let g:airline#extension#tabline#left_alt_sep = '|'
let g:airline#extension#tabline#formatter = 'default'
let g:jedi#completions_enable=0
let g:jedi#use_splits_not_buffers="right"
let g:neomake_open_list=2
" let g:neomake_python_enabled_makers=['pylint']
let g:neomake_python_enabled_makers=['flake8']
let g:python3_host_prog='~/../usr/bin/python3.8'
call plug#begin()
Plug 'mileszs/ack.vim'
Plug 'matze/vim-move'
Plug 'yggdroot/indentline'
Plug 'benmills/vimux'
" Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'davidhalter/jedi-vim'
Plug 'dense-analysis/ale'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" let g:deoplete#enable_at_startup = 1
Plug 'zchee/deoplete-jedi'
if has('nvim') || has('patch-8.0.902')
    Plug 'mhinz/vim-signify'
else
    Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neomake/neomake'
Plug 'tomtom/tcomment_vim'
Plug 'jiangmiao/auto-pairs'
Plug 'sbdchd/neoformat'
Plug 'tmhedberg/SimpylFold'
call plug#end()
let g:deoplete#enable_at_startup = 1
map <ScrollWheelUp> <C-Y>
imap <ScrollWheelUp> <C-X><C-Y>
map <ScrollWheelDown> <C-E>
nnoremap <silent><Leader>VP :VimuxPromptCommand<CR>
nnoremap <silent><Leader>f :FZF<CR>
nnoremap <silent><Leader>F :FZF ~<CR>
nnoremap <silent><Leader>, :BLines<CR>
autocmd TermOpen * startinsert
