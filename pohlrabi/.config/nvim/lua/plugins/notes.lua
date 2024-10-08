return {
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
  {
    "oflisback/obsidian-bridge.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      require("obsidian-bridge").setup({
        scroll_sync = true
      })
    end,
    event = {
      "BufReadPre *.md",
      "BufNewFile *.md",
    },
    lazy = true,
  }
}
