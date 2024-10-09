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
vim.opt.wrap = true
vim.opt.linebreak = true
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>to', function() vim.opt.scrolloff = 999 - vim.o.scrolloff end)

vim.cmd("set ignorecase smartcase")

-- Basic keymapping
vim.keymap.set('n', 'ge', '<End>')
vim.keymap.set('n', 'gs', '<Home>')
vim.keymap.set('n', 'gm', '%')

-- Telescope keymapping
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope go to buffers' })
vim.keymap.set('n', '<leader>ff', ':Telescope file_browser<CR>', { desc = 'Telescope find browser' })
vim.keymap.set('n', '<leader>fd', ':Telescope media<CR>', { desc = 'Telescope preview media' })

-- Launch panel if nothing is typed after <leader>z
vim.keymap.set("n", "<leader>z", "<cmd>Telekasten panel<CR>")

-- Most used functions
vim.keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>")
vim.keymap.set("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>")
vim.keymap.set("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>")
vim.keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>")
vim.keymap.set("n", "<leader>zn", "<cmd>Telekasten new_templated_note<CR>")
vim.keymap.set("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>")
vim.keymap.set("n", "<leader>zi", "<cmd>Telekasten insert_img_link<CR>")
vim.keymap.set("n", "<leader>zp", "<cmd>Telekasten paste_img_and_link<CR>")
vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianBridgeToggle<CR>")
vim.keymap.set("n", "<leader>or", "<cmd>ObsidianBridgeToggle<CR><cmd>ObsidianBridgeToggle<CR>")
vim.keymap.set("n", "<leader>og", "<cmd>ObsidianBridgeOpenGraph<CR>")
vim.keymap.set("n", "<leader>td", "<cmd>Telekasten toggle_todo<CR>")

vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, { command = "silent! update" })

-- Call insert link automatically when we start typing a link
vim.keymap.set("i", "\\\\", "<cmd>Telekasten insert_link<CR>")
vim.cmd [[
hi tkLink ctermfg=Red cterm=bold,underline guifg=yellow gui=bold,underline
hi tkBrackets ctermfg=gray guifg=gray
]]
