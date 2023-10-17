return {

	'lukas-reineke/indent-blankline.nvim',
	config = function()
		require('ibl').setup({
			indent = {	char = '┊'},
			whitespace = {	remove_blankline_trail = false},
			exclude = {
				buftypes = { 'terminal' },
				filetypes = { 'dashboard', 'NvimTree', 'packer', 'lsp-installer' }
			},
			scope = {
				enabled = true,
				show_end = true
			}
		})
	end

}
