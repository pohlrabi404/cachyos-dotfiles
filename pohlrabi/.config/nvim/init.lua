require("config.lazy")

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.incsearch = true
vim.opt.title = true
vim.opt.undofile = true
vim.opt.fillchars:append(',eob: ')
vim.opt.autowriteall = true
vim.opt.clipboard = "unnamedplus"

vim.cmd("set ignorecase smartcase")

-- Basic keymapping
vim.keymap.set('n', '<leader>to', function() vim.opt.scrolloff = 999 - vim.o.scrolloff end)
vim.keymap.set('n', 'ge', '<End>')
vim.keymap.set('n', 'gs', '<Home>')
vim.keymap.set('n', 'gm', '%')

-- Telescope keymapping
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope go to buffers' })
vim.keymap.set('n', '<leader>ff', ':Telescope file_browser<CR>', { desc = 'Telescope find browser' })
