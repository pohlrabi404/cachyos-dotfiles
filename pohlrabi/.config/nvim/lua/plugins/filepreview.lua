return {
  "dharmx/telescope-media.nvim",
  config = function()
    require('telescope').setup({
      extensions = {
        media = {
          backend = 'ueberzug',
          flag = {
            ueberzug = { xmove = -12, ymove = -3, warnings = true, supress_backend_warning = false }
          },
        },
      },
    })
    require('telescope').load_extension('media')
  end,
}
