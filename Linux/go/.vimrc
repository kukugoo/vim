set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'tmhedberg/matchit'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'vim-scripts/AutoComplPop'
Plugin 'dimasg/vim-mark'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'

"Call :VundleInstall in VIM if you add a new plugin 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Tagbar
"let g:tagbar_ctags_bin = "/home/wflin/bin/bin/ctags"
nnoremap <Space>l :TagbarToggle<CR>

"NERDTree
nnoremap <Space>o :NERDTreeToggle<CR>

"cscope
if has("cscope")
    "set csprg=/usr/local/bin/cscope
    set csto=0
    set cst
    set nocsverb

    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>i :cs find i <C-R>=expand("<cword>")<CR><CR>
set cscopequickfix=s-,c-,d-,i-,t-,e-

set timeoutlen=500
set nu
set autoindent
set cindent
set incsearch
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set smartindent
set laststatus=2 " always show statusline
set ruler " show where you are
syntax enable
set backspace=2
set background=dark
colorscheme solarized
"let g:solarized_termcolors=256
call togglebg#map("<F5>")

"paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Enable basic mouse behavior such as resizing buffers.
if has('mouse')
  set mouse=a
endif

if exists('$TMUX') " Support resizing in tmux
  set ttymouse=xterm2
endif

"easymotion
map <Space> <Plug>(easymotion-prefix)

"Window Navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"neocomplcache
"let g:neocomplcache_enable_at_startup = 1

"vim-go
let g:go_fmt_command = "goreturns"
let g:syntastic_go_checkers = ['go', 'golint', 'govet']

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

"automatically fit the quickfix windows
au FileType qf call AdjustWindowHeight(3, 10)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction

"ctrlp
let g:ctrlp_working_path_mode = '0'
