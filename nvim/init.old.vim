set background=dark "apply dark screen
set nu rnu "turn hybrid line numbers on
set autoindent
set tabstop=2 "set indntation width to 2 spaces
set shiftwidth=2 "autoindentation width in spaces
set expandtab
set mouse=a "enable mouse support

set cursorline "hightlight current line

set hlsearch "enable highlight search pattern
set smartcase
set ignorecase

set showmatch "show matching part of pairs [] {} ()
set noswapfile
set clipboard+=unamedplus

"set t_Co=256
let g:airline_powerline_fonts = 1

"PLUGINS
call plug#begin()
  Plug 'kien/ctrlp.vim'
  Plug 'zivyangll/git-blame.vim'
  Plug 'vim-airline/vim-airline'
  "Plug 'marko-cerovac/material.nvim' "material themes for neovim
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
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
  "nvim tree
  Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
  Plug 'nvim-tree/nvim-tree.lua'
  " Treesitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
call plug#end()

"PLUGIN OPTIONS
let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 0 "ra
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-emmet', 'coc-eslint', 'coc-prettier']

"REMAPS
inoremap jk <Esc>
vnoremap jk <Esc>

inoremap <expr> <cr> ((pumvisible())?("\<C-y>"):("\<cr>"))
"inoremap <expr> <S-j> ((pumvisible())?("\<Down>"):("\<S-j>"))
"inoremap <expr> <S-k> ((pumvisible())?("\<Up>"):("\<S-k>"))
"inoremap <expr> <C-j> pumvisible() ? "<Down>" : "\<C-n>"
"inoremap <expr> <C-k> pumvisible() ? "<Up>" : "\<C-p>"

"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
"inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"

nmap <S-j> <S-}>
nmap <S-k> <S-{>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

nnoremap <Leader>jf :%!jq .<CR>
nnoremap <leader>b <cmd>NvimTreeToggle<cr>

autocmd CompleteDone * pclose

set termguicolors

lua << EOF
vim.cmd.colorscheme "catppuccin-mocha"

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "javascript" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable  = true,
  }
}

require('telescope').setup {
  defaults = {
    file_ignore_patterns = {"node_modules"}
  }
}
EOF
