return {
	{
		'navarasu/onedark.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme 'onedark'

			function ColorMyPencils(color)
				color = color or "onedark"
				vim.cmd.colorscheme(color)
				print("colorscheme applied:", color)
				--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
				--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			end


		end,
	},

}

