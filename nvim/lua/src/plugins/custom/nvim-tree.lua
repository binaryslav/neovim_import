return {

	{'nvim-tree/nvim-tree.lua',

		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			local function my_on_attach(bufnr)
				local api = require "nvim-tree.api"

				api.config.mappings.default_on_attach(bufnr)
				vim.keymap.set("n", "<leader>i", ':NvimTreeToggle<CR>', {
					noremap = true
				})
			end

			require("nvim-tree").setup {
				on_attach = my_on_attach,
			}
		end,


	}
}
