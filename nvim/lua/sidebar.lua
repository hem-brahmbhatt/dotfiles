local sidebar = require("sidebar-nvim")

sidebar.setup({
  sections = { "git", "diagnostics", "symbols" },
  initial_width = 50,
})

vim.keymap.set("n", "<C-s>", function()
  sidebar.toggle()
end);
