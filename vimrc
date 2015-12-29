call plug#begin('~/.vim/plugged')

"Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-dispatch'
"Plug 'tpope/vim-surround'
"Plug 'tpope/vim-repeat'
"Plug 'tpope/vim-scriptease'
"Plug 'rhysd/vim-go-impl'
"Plug 'moll/vim-bbye'
"Plug 'rking/ag.vim'
"Plug 'mhinz/vim-sayonara'
"Plug 'itchyny/lightline.vim'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
"Plug 'git://git.wincent.com/command-t.git'
"Plug 'fatih/vim-nginx' , {'for' : 'nginx'}
"Plug 'garyburd/go-explorer'
"Plug 'w0ng/vim-hybrid'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'scrooloose/nerdcommenter'
"Plug 'scrooloose/nerdtree'
"Plug 'SirVer/ultisnips'
"Plug 'kchmck/vim-coffee-script', {'for' : 'coffee'}
"Plug 'tomtom/tcomment_vim'
"Plug 'AndrewRadev/splitjoin.vim'
"Plug 'ekalinin/Dockerfile.vim', {'for' : 'Dockerfile'}
"Plug 'JazzCore/ctrlp-cmatcher', {'do': './install.sh'}
"Plug 'cespare/vim-toml', {'for' : 'toml'}
"Plug 'elzr/vim-json', {'for' : 'json'}
"Plug 'corylanou/vim-present', {'for' : 'present'}
"Plug 'Raimondi/delimitMate'
"Plug 'wlangstroth/vim-racket'
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'pangloss/vim-javascript'

Plug 'altercation/vim-colors-solarized'
Plug 'sjl/badwolf'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'fatih/vim-go'
Plug 'tpope/vim-fugitive'
Plug 'tomtom/tcomment_vim'



call plug#end()

"colorscheme badwolf         " awesome colorscheme
"colorscheme gruvbox
"colorscheme solarized
colorscheme molokai

syntax enable
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
let mapleader=","       " leader is comma
" jk is escape
inoremap jk <esc>
filetype indent on      " load filetype-specific indent files



function! NumberToggle()
    if(&relativenumber == 1)
	set nornu
	else
	 set relativenumber
	endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
au FileType go nmap <Leader>s <Plug>(go-def-split)
au FileType go nmap <Leader>v <Plug>(go-def-vertical)
au FileType go nmap <Leader>in <Plug>(go-info)
au FileType go nmap <Leader>ii <Plug>(go-implements)
au FileType go nmap <leader>r  <Plug>(go-run)
au FileType go nmap <leader>b  <Plug>(go-build)
au FileType go nmap <leader>g  <Plug>(go-gbbuild)
au FileType go nmap <leader>t  <Plug>(go-test-compile)
au FileType go nmap <Leader>d <Plug>(go-doc)
au FileType go nmap <leader>g  <Plug>(go-gbbuild)
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gb :Gblame<CR>
