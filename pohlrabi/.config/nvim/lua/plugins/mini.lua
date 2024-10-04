-- Alternatively, you can provide a table specifying your colors to the setup function.
return { 
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.base16').setup({
      palette = {
        -- start flavours
    base00 = '#462126', base01 = '#634246', base02 = '#7f6467', base03 = '#9c8588',
    base04 = '#b9a6a8', base05 = '#d5c8c9', base06 = '#dcd0d1', base07 = '#e2d8d9',
    base08 = '#1f8c74', base09 = '#b75d67', base0A = '#387fa6', base0B = '#d7405b',
    base0C = '#308391', base0D = '#22829d', base0E = '#1e8398', base0F = '#ee162f',
        -- end flavours
      },
    })
    require('mini.ai').setup()
    require('mini.pairs').setup()

  end
}



