return {
	{ --  most verbose/customizable
		'nvim-tree/nvim-tree.lua',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		opts = {

			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
			-- vim.keymap.set("n", "<leader>fe", ":NvimTreeOpen", { silent = true }),
			--
			vim.keymap.set("n", "<leader>fe", ":NvimTreeToggle<CR>", { silent = true }),
		}, -- passed into config()

		config = function(_, opts)
			require("nvim-tree").setup(opts)
			-- other code you want to run with setting up nvim-tree
		end
	},
}
