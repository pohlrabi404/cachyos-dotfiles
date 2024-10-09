-- Alternatively, you can provide a table specifying your colors to the setup function.
return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.base16').setup({
      palette = {
        -- start flavours
        base00 = '#000000',
        base01 = '#49475b',
        base02 = '#6d6a7c',
        base03 = '#908d9d',
        base04 = '#b4b0be',
        base05 = '#d8d3df',
        base06 = '#dedae4',
        base07 = '#e3e0e9',
        base08 = '#727a77',
        base09 = '#b65f5c',
        base0A = '#747978',
        base0B = '#cb4a6f',
        base0C = '#7573a9',
        base0D = '#847195',
        base0E = '#867097',
        base0F = '#7872a7',
        -- end flavours
      },
    })
    require('mini.ai').setup()
    require('mini.pairs').setup()
    require('mini.jump2d').setup()
    require('mini.surround').setup({
      custom_surroundings = {
        [';'] = { output = { left = '[[', right = ']]' } }
      }
    })
  end
}
