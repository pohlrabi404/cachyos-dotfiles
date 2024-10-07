return {
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup({
        auto_load = true,        -- whether to automatically load preview when
        -- entering another markdown buffer
        close_on_bdelete = true, -- close preview window on buffer delete

        syntax = true,           -- enable syntax highlighting, affects performance

        theme = 'dark',          -- 'dark' or 'light'

        update_on_change = true,

        app = 'qutebrowser',                           -- 'webview', 'browser', string or a table of strings

        filetype = { 'markdown', 'md', 'telekasten' }, -- list of filetypes to recognize as markdown

        -- relevant if update_on_change is true
        throttle_at = 200000,   -- start throttling when file exceeds this
        -- amount of bytes in size
        throttle_time = 'auto', -- minimum amount of time in milliseconds
        -- that has to pass before starting new render
      })
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
  },
  {
    'renerocksai/telekasten.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require('telekasten').setup({
        home = vim.fn.expand("~/documents/notes"), -- Put the name of your notes directory here
        dailies = vim.fn.expand("~/documents/notes/dailies"),
        weeklies = vim.fn.expand("~/documents/notes/weeklies"),
        templates = vim.fn.expand("~/documents/notes/templates"),
        image_subdir = vim.fn.expand("~/documents/notes/img"),
        template_new_note = vim.fn.expand("~/documents/notes/templates/new_note.md"),
        template_new_daily = vim.fn.expand("~/documents/notes/templates/new_note_daily.md"),
        template_new_weekly = vim.fn.expand("~/documents/notes/templates/new_note_weekly.md"),

      })
    end
  },
}
