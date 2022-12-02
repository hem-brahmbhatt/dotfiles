local sidebar = require("sidebar-nvim")

sidebar.setup({
  sections = { "git", "diagnostics", "buffers", "symbols" },
})

vim.keymap.set("n", "<C-s>", function()
  sidebar.toggle()
end);
