-- Alternatively, you can provide a table specifying your colors to the setup function.
return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.base16').setup({
      palette = {
        -- start flavours
    base00 = '#000000', base01 = '#56486b', base02 = '#786a87', base03 = '#9a8ca3',
    base04 = '#bcafbf', base05 = '#ded1db', base06 = '#e3d8e0', base07 = '#e8dee5',
    base08 = '#8168cb', base09 = '#c55461', base0A = '#5d79aa', base0B = '#ad4cd4',
    base0C = '#6b5fff', base0D = '#5e7d8b', base0E = '#7d5aff', base0F = '#6f63f5',
        -- end flavours
      },
    })
    require('mini.ai').setup()
    require('mini.pairs').setup()
    require('mini.jump2d').setup()
  end
}
