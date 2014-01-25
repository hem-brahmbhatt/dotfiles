set nocompatible
filetype off   
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-cucumber'
Bundle 'tomasr/molokai'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'kchmck/vim-coffee-script'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on
syntax enable
set mouse=a
set clipboard=unnamed
set nocompatible
set tabstop=2 shiftwidth=2 expandtab
set number
set nowrap
set backspace=indent,eol,start
set textwidth=0 
set wrapmargin=0
set t_Co=256
colorscheme molokai 
map <C-n> :NERDTreeToggle<CR>

" Function and key mapping for running cucumber test
" ,t - Run scenario under cursor
" ,T - Run whole feature file
let mapleader = ","
autocmd FileType cucumber nmap <leader>t :call RunCucumberTest(line('.'))<CR>
autocmd FileType cucumber nmap <leader>T :call RunCucumberTest()<CR>
function! RunCucumberTest(...)
	let cmd = 'bundle exec cucumber'
	let @t = ':!' . cmd . ' ' . expand('%') . (a:0 == 1 ? ':'.line('.') : '')
	if strlen(@t > 0)
		execute @t
	elseif
		echoerr "No test command to run"
	endif
endfunction
