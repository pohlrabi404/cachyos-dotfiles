require("config.lazy")

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.relativenumber = true
vim.cmd("set ignorecase smartcase")

-- Basic keymapping
vim.keymap.set('n', 'ge', '<End>')
vim.keymap.set('n', 'gs', '<Home>')

-- Telescope keybind
-- f short for file
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fm', ':Telescope media<CR>', { desc = 'Telescope media' })

-- Neotree keybinds
-- t short for tree
vim.keymap.set('n', '<leader>t', ':Neotree toggle<CR>', { desc = 'Toggle Neotree' })

-- LSP keybinds
-- l short for lsp
vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover, { desc = 'Show Description' })
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { desc = 'Go to definition' })
vim.keymap.set({'n', 'v'}, '<leader>lc', vim.lsp.buf.code_action, { desc = 'Show code action' })

-- Formatter keybinds
-- c short for code
vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, { desc = 'Code formatting' })

-- Cmdline keybinds
vim.keymap.set('n', ';', '<cmd>FineCmdline<CR>',{ desc = 'Show Command Line' })
