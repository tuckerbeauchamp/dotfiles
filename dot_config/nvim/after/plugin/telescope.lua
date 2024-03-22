local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

require("telescope").setup({
	defaults = {
		hidden = true,
		path_display = { truncate = 5 },
		layout_config = {
			prompt_position = "bottom",
			width = 0.95,
			height = 0.95,
		},
		file_ignore_patterns = { "node_modules", ".git", ".next" },
	},
})
