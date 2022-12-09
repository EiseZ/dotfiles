" Plugins
call plug#begin()
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'junegunn/fzf'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'nvim-telescope/telescope-file-browser.nvim'
    Plug 'itchyny/lightline.vim'
    Plug 'EdenEast/nightfox.nvim'
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    Plug 'lervag/vimtex'
    Plug 'sirver/ultisnips'
    Plug 'da-h/AirLatex.vim', { 'do': ':UpdateRemotePlugins' }
call plug#end()


" lightline.vim
let g:lightline = { "colorscheme": "nightfox" }

" telescope.nvim
lua require("telescope").load_extension "file_browser"
lua require("telescope").load_extension "fzf"
lua require("telescope").setup { defaults = { file_ignore_patterns = { ".git/", ".cache/", "target/", ".fls", ".aux", ".fdb_latexmk", ".toc", ".synctex.gz", ".pdf", ".log", ".dvi" }}}

" vimtex
let g:vimtex_view_method = 'zathura'

" ultisnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["snips"]

" AirLatex.vim
let g:AirLatexUsername="cookies:overleaf_session2=s%3An0NAbtdgcarMe6wQhoSNUbmJjSwa6bQH.ZOcWsHDNRvDNlZeQHp1%2BML3WvmnTKunRpQI7VTuCnOs"
let g:AirLatexLogLevel="DEBUG"
let g:AirLatexAllowInsecure=0

" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Line numbers
set relativenumber
set nu

" Search
set nohlsearch
set ignorecase
set smartcase

" History
set backup
set noswapfile
set backupdir=~/.cache/nvim/backup
set undofile
set undodir=~/.cache/nvim/undo

" Colors
set termguicolors
colorscheme nightfox

" Misc
set completeopt=menuone,noinsert,preview
set signcolumn=yes
set exrc
set hidden
set noerrorbells
set scrolloff=10
set updatetime=50
set encoding=utf-8
set cmdheight=1
set noshowmode
set clipboard=unnamedplus
set colorcolumn=100

" Remaps
let mapleader=" "
" Autocompletion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Telescope
nnoremap <Leader>f :Telescope find_files<cr>
nnoremap <Leader>T :Telescope<cr>
nnoremap <Leader>F :Telescope file_browser<cr>
" Harpoon
map <M-t> :lua require("harpoon.ui").toggle_quick_menu()<cr>
map <M-T> :lua require("harpoon.mark").add_file()<cr>
map <M-1> :lua require("harpoon.ui").nav_file(1)<cr>
map <M-2> :lua require("harpoon.ui").nav_file(2)<cr>
map <M-3> :lua require("harpoon.ui").nav_file(3)<cr>
map <M-4> :lua require("harpoon.ui").nav_file(4)<cr>
map <M-5> :lua require("harpoon.ui").nav_file(5)<cr>
" Move to (<>)
nnoremap <leader><Space> :call search("(<>)")<cr>4xi
syntax match Comment "(<>)"
hi customInsertField guifg=grey ctermfg=grey

" Autocmd
augroup AUTOCMD
    autocmd!
    autocmd InsertEnter * norm zz
    autocmd BufWritePre * :%s/\s\+$//e

    autocmd BufWinEnter * match customInsertField /(<>)/
    autocmd InsertEnter * match customInsertField /(<>)/
    autocmd InsertLeave * match customInsertField /(<>)/
    autocmd BufWinLeave * call clearmatches()
augroup END
