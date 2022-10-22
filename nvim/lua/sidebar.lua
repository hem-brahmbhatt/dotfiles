local sidebar = require("sidebar-nvim")

sidebar.setup({
  sections = { "git", "diagnostics", "buffers", "todos" },
})

vim.keymap.set("n", "<C-s>", function()
  sidebar.toggle()
end);
