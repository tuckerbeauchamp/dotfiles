-- lazy.nvim configuration file

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({

	-- Git Blame
	"f-person/git-blame.nvim",

	-- Harpoon
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},

	-- Syntax Highlighter
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
	},

	-- File Explorer
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
	},

	-- Markdown Preview
	{
		"iamcco/markdown-preview.nvim",
		cmd = {
			"MarkdownPreviewToggle",
			"MarkdownPreview",
			"MarkdownPreviewStop",
		},
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},

	-- Git Gutter / Shows git changes in the gutter
	"airblade/vim-gitgutter",

	-- Copilot / Autocompletion
	"github/copilot.vim",

	-- Keep current context above cursor
	"nvim-treesitter/nvim-treesitter-context",

	-- Undotree to keep undos stored for later use
	"mbbill/undotree",

	-- Formatter that respects prettier
	"sbdchd/neoformat",

	-- Comment out line of text
	"tpope/vim-commentary",

	-- Allow text wrapping based off symbol
	"tpope/vim-surround",

	-- Linting
	"dense-analysis/ale",

	-- Diagnostic and LSP viewer
	{ "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" },

	-- web dev icons for below packages. trying to prevent depency issue
	"nvim-tree/nvim-web-devicons",

	-- Fuzzy Finder
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		-- or                            , branch = '0.1.x',
		dependencies = { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep" },
	},

	-- Themes
	{ "rose-pine/neovim", name = "rose-pine" },

	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			vim.cmd("colorscheme catppuccin")
		end,
	},

	-- Language server managed by Mason
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		dependencies = {
			--- Uncomment these if you want to manage LSP servers from neovim
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",

			-- LSP Support
			"neovim/nvim-lspconfig",
			-- Autocompletion
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
		},
	},

	-- Status Line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
})
