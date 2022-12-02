local utils = require('utils')
local telescope = require("telescope")
local telescopeConfig = require("telescope.config")
local telescopeActions = require('telescope.actions')
local telescopeBuiltIns = require('telescope.builtin')

-- Clone the default Telescope configuration
local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

-- print(utils.dump(telescopeConfig))

table.insert(vimgrep_arguments, "--hidden")
table.insert(vimgrep_arguments, "--no-ignore")
table.insert(vimgrep_arguments, "--line-number")
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!.git/*")
--      '--color=never',
--      '--no-heading',
--      '--with-filename',
--      '--line-number',
--      '--column',
--      '--smart-case',
--      '--no-ignore',
--      '--hidden'


telescope.setup{
  pickers = {
    find_files = {
      hidden = true,
      no_ignore = true,
    },
  },
  defaults = {
    file_ignore_patterns = { "node_modules", ".git" },
    -- vimgrep_arguments only gets used for live_grep. For find_files and oldfiles, specify the arguments inline
    -- See https://github.com/nvim-telescope/telescope.nvim/blob/bd9e8a7eac1b3f921d293866abf7574d49cb610c/doc/telescope.txt#L522-L524
    vimgrep_arguments = vimgrep_arguments,
    dynamic_preview_title = true,
    path_display = "truncate",
    mappings = {
      i = {
        ["<C-w>"] = telescopeActions.send_selected_to_qflist,
        ["<C-q>"] = telescopeActions.send_to_qflist,
      },
      n = {
        ["<C-w>"] = telescopeActions.send_selected_to_qflist,
        ["<C-q>"] = telescopeActions.send_to_qflist,
      },
    },
  }
}

utils.map('n', '<C-g>', '', { callback = telescope.extensions.live_grep_args.live_grep_args })
utils.map('n', '<C-p>', '', { callback = telescopeBuiltIns.find_files })
utils.map('n', '<C-f>', '', { callback = function()
    telescopeBuiltIns.oldfiles({ hidden = true })
end })

vim.keymap.set("n", "<C-]>", function()
    telescopeBuiltIns.lsp_definitions({
        show_line = false,
        fname_direction = -1,
        jump_type = "never"
    })
end);

vim.keymap.set("n", "<esc>r", function()
    telescopeBuiltIns.lsp_references({
        show_line = false,
        fname_direction = -1,
        jump_type = "never"
    })
end);

vim.keymap.set("n", "<C-k>", function()
    telescopeBuiltIns.lsp_dynamic_workspace_symbols({
        fname_direction = -1,
        symbol_width = 30
    })
end);

