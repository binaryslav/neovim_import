return {
	{
		"olimorris/onedarkpro.nvim",
		lazy = false,
		priority = 1000,
		filetype = {
			ruby            = false,
			scss            = false,
			xml             = false,
			typescriptreact = false,
			options         = {
				transparency = true
			}

		},
		config = function()
			function ColorMyPencils(color)
				color = color or "onedark"
				vim.cmd.colorscheme(color)
				print("colorscheme applied:", color)
			end

			ColorMyPencils("onedark")

			function SetTransparency(transparent)
				if transparent then
					vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
					vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
				else
					vim.cmd.colorscheme("onedark")
					print("colorscheme applied: onedark")
				end
			end

			SetTransparency(true)
		end,
	},

}
