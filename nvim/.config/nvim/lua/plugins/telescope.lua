return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup()
		local builtins = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtins.find_files)
	end,
}
