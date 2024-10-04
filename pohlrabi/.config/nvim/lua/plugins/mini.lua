-- Alternatively, you can provide a table specifying your colors to the setup function.
return { 
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.base16').setup({
      palette = {
        -- start flavours
    base00 = '#482223', base01 = '#674647', base02 = '#856b6b', base03 = '#a48f8e',
    base04 = '#c3b4b2', base05 = '#e1d8d6', base06 = '#e6dedc', base07 = '#eae4e2',
    base08 = '#a26a63', base09 = '#8d7272', base0A = '#c2517f', base0B = '#8e7171',
    base0C = '#8e6d92', base0D = '#d74343', base0E = '#8c8e87', base0F = '#dd79ae',
        -- end flavours
      },
    })
    require('mini.ai').setup()
    require('mini.pairs').setup()

  end
}



