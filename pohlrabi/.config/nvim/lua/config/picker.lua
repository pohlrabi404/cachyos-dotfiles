local fb_actions = require "telescope".extensions.file_browser.actions

local function open_parent_folder(prompt_bufnr)
  local action_state = require "telescope.actions.state"
  local current_picker = action_state.get_current_picker(prompt_bufnr)
  local entry = action_state.get_selected_entry()
  local parent_dir = vim.fn.fnamemodify(entry.path, ":h")
  current_picker:refresh(fb_actions.get_browser_opts({path = parent_dir}))
end

require('telescope').setup {
  extensions = {
    file_browser = {
      mappings = {
        ["i"] = {
          ["<C-p>"] = open_parent_folder
        },
        ["n"] = {
          ["p"] = open_parent_folder
        },
      },
    },
  },
}
