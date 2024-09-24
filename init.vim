" Basic settings
set number
set relativenumber
syntax on
set mouse=a

" Enable line numbers, relative line numbers, syntax highlighting, and mouse support

" Install Vim-Plug (plugin manager)
call plug#begin('~/.vim/plugged')

" Plugins to manage
Plug 'preservim/nerdtree'         " File tree explorer
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Code completion
Plug 'dense-analysis/ale'         " Linting
Plug 'morhetz/gruvbox'            " Color scheme
Plug 'tpope/vim-fugitive'         " Git integration

" Python-related plugins
Plug 'psf/black', { 'branch': 'stable' }  " Autoformatter for Python

call plug#end()

" Configure NERDTree for project structure
nmap <C-n> :NERDTreeToggle<CR>  " Toggle file tree with Ctrl+n
let NERDTreeShowHidden=1         " Show hidden files

" Configure ALE (linting and syntax checking)
let g:ale_python_auto_pipenv = 1
let g:ale_python_flake8_executable = 'flake8'
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'python': ['black', 'isort'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'json': ['prettier'],
\}

" Color scheme
colorscheme gruvbox  " Set the gruvbox color scheme

" CoC (Conquer of Completion) for autocompletion
let g:coc_global_extensions = [
\ 'coc-pyright',   " Python language server
\ 'coc-json',      " JSON support
\ 'coc-html',      " HTML support
\ 'coc-css',       " CSS support
\ 'coc-tsserver'   " TypeScript for Django templates and JS
\]

