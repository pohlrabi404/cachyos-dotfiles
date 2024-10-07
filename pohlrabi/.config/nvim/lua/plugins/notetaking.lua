return {
  {
    'renerocksai/telekasten.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require('telekasten').setup({
        home = "~/documents/notes",
        dailies = '~/documents/notes/dailies',
        templates = '~/documents/notes/templates',

        -- File extension
        extension = ".md",

        -- Clipboard
        clipboard_program = "wl-paste",

        uuid_type = "%Y%m%d%H%M",
        uuid_sep = "-",

        follow_creates_nonexisting = true,  -- create non-existing on follow
        dailies_create_nonexisting = true,  -- create non-existing dailies
        weeklies_create_nonexisting = true, -- create non-existing weeklies

        -- Link style
        image_link_style = "markdown",
        sort = "filename",
        install_syntax = true,
        tag_notation = "#tag",
        subdirs_in_links = false,
      })
    end
  },
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup()
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
  },
}
