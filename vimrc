set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" File navigation
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlpvim/ctrlp.vim'

" Language Support
Plugin 'kchmck/vim-coffee-script'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'slim-template/vim-slim'

" Color Schemes
Plugin 'chriskempson/base16-vim'
Plugin 'morhetz/gruvbox'

" Misc
Plugin 'terryma/vim-multiple-cursors'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-startify'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Gui Appearance
" set guifont=Menlo\ Regular:h15
set guifont=Hack\ Regular:h15
set guioptions-=L
set guioptions-=R
set number

" Tab settings (magic)
set tabstop=2
set expandtab
set smarttab 
set softtabstop=0
set shiftwidth=2

" Color scheme
syntax enable
set background=dark
" colorscheme base16-solarized-dark 
colorscheme base16-eighties

" Start NERDTREE
autocmd vimenter * NERDTree
" Move to next window.
autocmd vimenter * wincmd w
" Visual changes
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" Only click once to open/collapse.
let NERDTreeMouseMode = 2
" Exit if NERDTree is the last window pane open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" MAPPINGS
" Remap leader
let mapleader = ","
" Edit vimrc in new split
:nnoremap <leader>vc :vsplit $MYVIMRC<cr>
" Source vimrc
:nnoremap <leader>svc :source $MYVIMRC<cr>
"Edit bash_profile in new split
:nnoremap <leader>bp :vsplit ~/.bash_profile<cr>

" Reads changes from disk
set autoread

" Indent guide colours
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

" Airline
let g:airline_powerline_fonts = 1
set t_Co=256
let g:airline_theme='base16'

" Startify
" Save sessions automatically
let g:startify_session_persistence = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" UltiSnips
let g:UltiSnipsExpandTrigger="<cr>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
