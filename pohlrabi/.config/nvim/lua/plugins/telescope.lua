return {
  -- Base Telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  { 
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release',
    config = function()
      require('telescope').setup()
      require('telescope').load_extension('fzf')
    end
  },

  -- File Browser
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      local actions = require "telescope.actions"
      local action_state = require "telescope.actions.state"
      local fb_actions = require "telescope".extensions.file_browser

      local function open_parent_folder(prompt_bufnr)
        local entry = action_state.get_selected_entry()
        local parent_dir = vim.fn.fnamemodify(entry.path, ":h")
        actions.close(prompt_bufnr)
        fb_actions.file_browser({path = parent_dir})
      end
      require("telescope").setup({
        extensions = {
          file_browser = {
            auto_depth = true,
            mappings = {
              ["i"] = {
                ["<leader>p"] = open_parent_folder
              },
              ["n"] = {
                ["gp"] = open_parent_folder
              },
            },
          },
        }
      })
      require("telescope").load_extension "file_browser"
    end
  },

  -- Show which key
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>/",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  }
}
