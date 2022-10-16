set background=dark "apply dark screen
set nu rnu "turn hybrid line numbers on
set autoindent
set tabstop=2 "set indentation width to 2 spaces
set shiftwidth=2 "autoindentation width in spaces
set expandtab
set mouse=a "enable mouse support

set cursorline "hightlight current line
:hi Cursorline cterm=bold ctermbg=black

set hlsearch "enable highlight search pattern
set smartcase
set ignorecase

set showmatch "show matching part of pairs [] {} ()

set t_Co=256

"PLUGINS
call plug#begin()
  Plug 'kien/ctrlp.vim'
  Plug 'kaicataldo/material.vim', { 'branch' : 'main' } "material color scheme for vim and neovim
  Plug 'zivyangll/git-blame.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'pangloss/vim-javascript'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'leafgarland/typescript-vim'
  Plug 'ianks/vim-tsx'
  Plug 'neoclide/coc.nvim', { 'branch' : 'release' }
  Plug 'windwp/nvim-autopairs'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'jose-elias-alvarez/null-ls.nvim'
  Plug '/usr/share/fb-editor-support/nvim'
  " Dart and Flutter plugins
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'thosakwe/vim-flutter'
  Plug 'natebosch/vim-lsc'
  Plug 'natebosch/vim-lsc-dart'
  " Vim Fugitive
  Plug 'tpope/vim-fugitive'
call plug#end()

"COLOR SCHEME
if (has("termguicolors"))
  set termguicolors
endif

let g:colors_name = 'material'
let g:material_theme_style = 'darker'
let g:material_terminal_italics = 1

syntax enable
colorscheme material

"PLUGIN OPTIONS
let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 0 "ra
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-emmet', 'coc-eslint', 'coc-prettier']

let g:airline_powerline_fonts = "1"

"REMAPS
inoremap jk <Esc>
vnoremap jk <Esc>

nmap <S-j> <S-}>
nmap <S-k> <S-{>

"inoremap <S-k> <Up>
"inoremap <S-j> <Down>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

nnoremap <Leader>jf :%!jq .<CR>

autocmd CompleteDone * pclose
