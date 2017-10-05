set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
let g:vundle_default_git_proto = 'git'
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'craigemery/vim-autotag'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/vitality.vim'
Plugin 'lchi/vim-toffee'
Plugin 'slim-template/vim-slim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-dispatch'
Plugin 'tomtom/tcomment_vim'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()

let g:jsx_ext_required = 1

filetype plugin indent on
syntax on
colorscheme molokai
" setting hidden allows undo to work after buffer was closed
set hidden
set noswapfile
set nobackup
set mouse=a
set nocompatible
set tabstop=2 shiftwidth=2 expandtab
set number
set nowrap
set backspace=indent,eol,start
set textwidth=0
set wrapmargin=0
set t_Co=256
set relativenumber
set background=dark
map ,n :NERDTreeFind<CR>
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](\.git|tmp|node_modules)'
  \ }
set cursorline
set wildignore=*.keep,*~,*.swp
" To quit all files quickly - useful for quitting 'git d' by holding down on Q
map Q :qa<CR>
au FileType css setl ofu=csscomplete#CompleteCSS
au FocusLost * :wa

" Toggle between the last 2 files
nmap <Tab> :b#<CR>

" Airline settings
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_theme='simple'

" Function and key mapping for running cucumber test
" ,t - Run scenario under cursor
" ,T - Run whole feature file
let mapleader = ","
autocmd FileType cucumber nmap <leader>t :call RunCucumberTest(line('.'))<CR>
autocmd FileType cucumber nmap <leader>T :call RunCucumberTest()<CR>
function! RunCucumberTest(...)
        let cmd = 'bundle exec cucumber ' . expand('%') . (a:0 == 1 ? ':'.line('.') : '')
        if strlen(cmd > 0)
                execute ':wa'
                execute ':Dispatch ' . cmd
        elseif
                echoerr "No test command to run"
        endif
endfunction

set mouse+=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

" Auto remove all trailing characters
autocmd BufWritePre * :%s/\s\+$//e

set timeout         " Do time out on mappings and others
set timeoutlen=2000 " Wait {num} ms before timing out a mapping

" When you’re pressing Escape to leave insert mode in the terminal, it will by
" default take a second or another keystroke to leave insert mode completely
" and update the statusline. This fixes that. I got this from:
" https://powerline.readthedocs.org/en/latest/tipstricks.html#vim
if !has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

" Format cucumber table
map \| :Tab /\|<CR>

map <F2> :colorscheme solarized<CR>:set background=light<CR>
map <F3> :colorscheme molokai<CR>:set background=dark<CR>
map <F4> :colorscheme solarized<CR>:set background=dark<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Quick togo last buffer basically
nnoremap <leader><leader> <c-^>

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

nmap <silent> ,qc :cclose<CR>
nmap <silent> ,qo :copen<CR>

" NERDTREE
nnoremap <C-f> :NERDTreeFind<cr><cr>
noremap <C-n> :NERDTreeToggle<CR>

" List Buffers
nmap <silent> <Leader>b :CtrlPBuffer<CR>

" Fast saving
nmap <leader>w :w!<cr>

" Quick close
nmap <leader>q :q<CR>

" hit ,f to find the definition of the current class
" this uses ctags. the standard way to get this is Ctrl-]
nnoremap <silent> ,f <C-]>

" via: http://rails-bestpractices.com/posts/60-remove-trailing-whitespace
" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
command! StripTrailingWhitespaces call <SID>StripTrailingWhitespaces()
nmap <leader>sw :StripTrailingWhitespaces<CR>

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

" Formatting JSON motherfukaaaa
com! FormatJSON %!python -m json.tool
