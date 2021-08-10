" Find files using Telescope command-line sugar.
nnoremap <leader>ff :lua require('telescope.builtin').find_files({hidden = true})<cr>
nnoremap <C-p> :lua require('telescope.builtin').find_files({hidden = true})<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua << EOF
local actions = require('telescope.actions')
require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = { "node_modules", ".git" },
    mappings = {
      i = {
        ["<C-w>"] = actions.send_selected_to_qflist,
        ["<C-q>"] = actions.send_to_qflist,
      },
      n = {
        ["<C-w>"] = actions.send_selected_to_qflist,
        ["<C-q>"] = actions.send_to_qflist,
      },
    },
  } 
}
EOF
