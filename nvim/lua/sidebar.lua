local sidebar = require("sidebar-nvim")

sidebar.setup()

vim.keymap.set("n", "<C-s>", function()
  sidebar.toggle()
end);
