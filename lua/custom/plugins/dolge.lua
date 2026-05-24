-- Personal customizations on top of kickstart.

-- mini.files: simple, fast file explorer.
-- mini.nvim is already installed by kickstart; just enable this module.
require('mini.files').setup()
vim.keymap.set('n', '<leader>e', function()
  require('mini.files').open()
end, { desc = 'Open file [E]xplorer' })

-- nvim-treesitter-context: pin current scope (function/class/etc.) at top of window.
vim.pack.add { { src = 'https://github.com/nvim-treesitter/nvim-treesitter-context' } }
require('treesitter-context').setup {}
