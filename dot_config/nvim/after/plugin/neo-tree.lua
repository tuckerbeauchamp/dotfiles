require("neo-tree").setup({

  window = {
    width = 40,
    position = "right",
  },
	filesystem = {
    follow_current_file = {
      enabled = true,
      leave_dirs_open = false,
    },
		filtered_items = {
			visible = true,
			show_hidden_count = true,
			hide_dotfiles = false,
			hide_gitignored = false,
			never_show = {
				"node_modules",
				".git",
			},
		},
    use_libuv_file_watcher = true,
	},
})
