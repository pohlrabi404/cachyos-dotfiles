-- plugins/telescope.lua:
return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		-- or                              , branch = '0.1.x',
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extension = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"nvim-telescope/telescope-media-files.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					media_files = {
						-- filetypes whitelist
						-- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
						filetypes = { "png", "webp", "jpg", "jpeg" },
						-- find command (defaults to `fd`)
						find_cmd = "fd",
					},
				},
			})
			require("telescope").load_extension("media_files")
		end,
	},
	{
		"dharmx/telescope-media.nvim",
		config = function()
			local canned = require("telescope._extensions.media.lib.canned")

			require("telescope").setup({
				extensions = {
					media = {
						backend = "ueberzug", -- image/gif backend
            flags = {
              ueberzug = {
                xmove = -24,
                ymove = -7,
              },
            },
						on_confirm_single = canned.single.copy_path,
						on_confirm_muliple = canned.multiple.bulk_copy,
						cache_path = vim.fn.stdpath("cache") .. "/media",
					},
				},
			})
			require("telescope").load_extension("media")
		end,
	},
}
