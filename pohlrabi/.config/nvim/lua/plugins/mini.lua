-- Alternatively, you can provide a table specifying your colors to the setup function.
return { 
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.base16').setup({
      palette = {
        -- start flavours
    base00 = '#392751', base01 = '#5b4a6e', base02 = '#7d6d8b', base03 = '#9e90a8',
    base04 = '#c0b3c5', base05 = '#e1d6e2', base06 = '#e6dce6', base07 = '#eae2ea',
    base08 = '#9555eb', base09 = '#c65bdd', base0A = '#b96bea', base0B = '#bb64c3',
    base0C = '#ec83fa', base0D = '#637be4', base0E = '#dd7bf4', base0F = '#9f57d6',
        -- end flavours
      },
    })
    require('mini.ai').setup()
    require('mini.pairs').setup()

  end
}



