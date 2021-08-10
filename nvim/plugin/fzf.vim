" If installed using Homebrew
set rtp+=/opt/homebrew/bin/fzf

" Below doesn't work due to https://github.com/junegunn/fzf/issues/1885
" An action can be a reference to a function that processes selected lines
" function! s:build_quickfix_list(lines)
"   call setqflist([], ' ', { 'title': 'FZF Selected', 'items': map(copy(a:lines), '{ "filename": v:val }') })
"   copen
"   cc
" endfunction

" let g:fzf_action = {
" \  'ctrl-q': function('s:build_quickfix_list'),
" \  'ctrl-t': 'tab split',
" \  'ctrl-x': 'split',
" \  'ctrl-v': 'vsplit',
" \  }
