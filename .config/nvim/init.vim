" Vim 8 defaults
" For more info, see :help defaults.vim
unlet! skip_defaults_vim
silent! source $VIMRUNTIME/defaults.vim

let s:darwin = has('mac')
let mapleader      = ' '
let maplocalleader = ' '

let vim_plug_readme=expand('~/.dotfiles/.config/nvim/plugged/vim-plug/README.md')
if !filereadable(vim_plug_readme)
	echo "Installing Vim-plug"
	echo ""
	silent !mkdir -p ~/.vim/{autoload,plugged}
	silent !git clone --depth 1 https://github.com/junegunn/vim-plug.git ~/.dotfiles/.config/nvim/plugged/vim-plug
	silent !ln -sf ~/.dotfiles/.config/nvim/plugged/vim-plug/plug.vim ~/.dotfiles/.config/nvim/autoload/plug.vim
endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-plug'
Plug 'tpope/vim-sensible'

" Navigation
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'mileszs/ack.vim'
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }

" File Editing
"Plug 'cohama/lexima.vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'sickill/vim-pasta'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim', {'on': ['Agit', 'AgitFile']}

" Testing
Plug 'janko-m/vim-test'
Plug 'benmills/vimux'

" Look & Feel
Plug 'itchyny/lightline.vim'

" Misc
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-commentary'
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/syntastic'
Plug 'Shougo/neocomplete.vim'
Plug 'sheerun/vim-polyglot'
Plug 'sjl/vitality.vim'

" Colors
Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plug 'sickill/vim-monokai'
Plug 'junegunn/seoul256.vim'
Plug 'joshdick/onedark.vim'
Plug 'Mofiqul/dracula.nvim'

" Ruby
Plug 'ngmy/vim-rubocop'
Plug 'tpope/vim-rails', { 'for': 'ruby' }

call plug#end()
" the caveat is that you should *never* use plugupgrade
delc PlugUpgrade

" Basic settings
set autoindent
set encoding=utf-8
set number
set t_Co=256
set mouse=a
set ts=2 sts=2 sw=2 expandtab
set laststatus=2
"set background=dark
set background=light

"colorscheme monokai
"colorscheme Tomorrow-Night-Eighties
"colorscheme seoul256
"colorscheme onedark
colorscheme dracula

" Mappings - Faster scrolling
nmap J 10j
nmap K 10k

" Fast saving & exiting
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>

" Alias commands
command! WQ wq
command! Wq wq
command! W w
command! Q q

" Autocomplete: Ctrl + space
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
			\ "\<lt>C-n>" :
			\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
			\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
			\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

" Syntastic
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%{exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""" Nerd Tree
" let g:NERDTreeWinPos = "left"
" let g:NERDTreeIgnore = ['\.pyc$', '\.pyo$']
" let g:NERDTreeWinSize=20
" Single-clic for folder nodes and double for files.
" let g:NERDTreeMouseMode = 2
" let g:NERDTreeAutoDeleteBuffer = 1
" let g:NERDTreeCaseSensitiveSort = 1
" let g:NERDTreeDirArrows = 1
" let g:NERDTreeHijackNetrw = 1
let g:NERDTreeMinimalUI = 1
" let g:NERDTreeChDirMode = 2

map <leader>n :NERDTreeToggle<cr>

"" CtrlP
map <C-p> :Ctrl<CR>

"" LightLine
let g:lightline = {
			\ 'colorscheme': 'wombat',
			\ 'component': {
			\   'readonly': '%{&readonly?"x":""}',
			\ },
			\ 'separator': { 'left': '', 'right': '' },
			\ 'subseparator': { 'left': '|', 'right': '|' }
			\ }

"" TagBar
nmap <leader>8 :TagbarToggle<CR>
nmap <F8> :TagbarToggle<CR>
map <C-t> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

"" Python
let python_highlight_all=1

"" vim-test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

let test#strategy = "vimux"

if executable('ag')
	let g:ackprg = 'ag --vimgrep'
endif

if s:darwin
	let g:syntastic_ruby_mri_exec = '/Users/julionc/.rbenv/shims/ruby'
endif

" set clipboard+=unnamed
set clipboard=unnamedplus

" Arrows are unvimlike 
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
