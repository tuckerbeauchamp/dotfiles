return {
	{
		"echasnovski/mini.nvim",
		config = function()
			-- Better `a` and `i` text objects
			require("mini.ai").setup()
			-- Surround text objects
			require("mini.surround").setup()
			-- Commentting support
			require("mini.comment").setup()
			-- Hints for commands
			require("mini.clue").setup()
		end,
	},
}
