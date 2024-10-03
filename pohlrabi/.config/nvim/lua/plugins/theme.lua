return {
  "RRethy/base16-nvim",
  config = function()
    require("base16-colorscheme").setup({
      -- start flavours
    base00 = '#382119', base01 = '#57433c', base02 = '#75655e', base03 = '#938780',
    base04 = '#b2a8a2', base05 = '#d0cac5', base06 = '#d7d2cd', base07 = '#dedad6',
    base08 = '#6378a4', base09 = '#5f7a9b', base0A = '#d54728', base0B = '#a6676a',
    base0C = '#986c7f', base0D = '#c6c0ba', base0E = '#647a95', base0F = '#5c79aa',
      -- end flavours
    })
  end,
}
