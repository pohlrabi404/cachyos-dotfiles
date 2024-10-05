-- Alternatively, you can provide a table specifying your colors to the setup function.
return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.base16').setup({
      palette = {
        -- start flavours
        base00 = '#262c50',
        base01 = '#484f6c',
        base02 = '#697288',
        base03 = '#8b95a4',
        base04 = '#acb8c0',
        base05 = '#cddadc',
        base06 = '#d5e0e1',
        base07 = '#dce5e6',
        base08 = '#799b65',
        base09 = '#4b3dff',
        base0A = '#8e6ba2',
        base0B = '#747883',
        base0C = '#a23dff',
        base0D = '#387ac5',
        base0E = '#476aff',
        base0F = '#7762ef',
        -- end flavours
      },
    })
    require('mini.ai').setup()
    require('mini.pairs').setup()
    require('mini.jump2d').setup()
  end
}
