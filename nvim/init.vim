" === Python pathing for both 2 and 3 ===
let g:python_host_prog = '/usr/lib/python2.7'
let g:python3_host_prog = '/usr/lib/python3.9'

set nocompatible
packloadall
" === Tab settings for files ===
set expandtab
set shiftwidth=4
set tabstop=4 softtabstop=4
set smarttab
set smartindent

" === General Settings ===
syntax on
set ruler
set number
set relativenumber
set noerrorbells
set nohlsearch
set showcmd
set incsearch
set autoindent
set nowrap
set nospell
set spell spelllang=en_us
set spellsuggest+=5
set nofoldenable
set hidden
set scrolloff=8
set colorcolumn=80
set lazyredraw

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug 'Raimondi/delimitMate'
Plug 'vim-syntastic/syntastic'
Plug 'neoclide/coc.nvim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'ThePrimeagen/vim-be-good'
Plug 'vimwiki/vimwiki'
Plug 'BurntSushi/ripgrep'
Plug 'sharkdp/bat'
Plug 'sharkdp/fd'
call plug#end()

" === Custom status bar ===
" test this
set statusline=
set statusline+=%#PmenuSel#
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %f
set statusline+=%=
set statusline+=%#DiffAdd#
set statusline+=\ %c:%l/%L
set statusline+=\ %p%%
set statusline+=\ [%n]

" Trying to fix llp
" Setting up vim-latex
autocmd Filetype tex setl updatetime=1
let g:livepreview_engine = 'pdflatex'
let g:livepreview_previewer = 'evince'


" Setting colorscheme 
set background=dark
colorscheme gruvbox

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"Tab complete
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
      	\ <SID>check_back_space() ? "\<TAB>" :
      	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
" Find files using Telescope command-line sugar.
nn <leader>ff <cmd>Telescope find_files<cr>
nn <leader>fg <cmd>Telescope live_grep<cr>
nn <leader>fb <cmd>Telescope buffers<cr>
nn <leader>fh <cmd>Telescope help_tags<cr>

" spell check last misspelled word
nnoremap <leader>sc [s z=

" === Remaps for surround ===
nmap <leader>cs cs
nmap <leader>ds ds
nmap <leader>ws ysiw
nmap <leader>ls yss

" === Setting remaps for focus anding ; ===
nnoremap <leader>u :UndotreeToggle<cr> :wincmd h<cr> :wincmd k<cr>
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>; A;<esc>$
nnoremap <leader>rp "_dwhp
nnoremap Q @@
nnoremap s "_d

" === Highlight move ===
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" === Syntastic ===
nnoremap <leader>eo :SyntasticCheck<CR>
nnoremap <leader>ec :lclose<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
