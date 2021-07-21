command! -nargs=1 Rg call luaeval('require("fzf-commands").rg(_A)', <f-args>)
" nnoremap <leader>r :<c-u>Rg<space>
