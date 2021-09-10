" Find files using Telescope command-line sugar.
nnoremap <C-g> :lua require('telescope.builtin').live_grep({hidden = true})<cr>
nnoremap <C-p> :lua require('telescope.builtin').find_files({hidden = true})<cr>
nnoremap <C-f> :lua require('telescope.builtin').oldfiles({hidden = true})<cr>

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
