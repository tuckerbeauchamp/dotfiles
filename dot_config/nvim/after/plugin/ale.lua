local ale = {}

function ale.setup()
	-- Configure linters for React.js
	vim.g.ale_linters = {
		javascript = { "eslint" },
		javascriptreact = { "eslint" },
		typescript = { "eslint" },
		typescriptreact = { "eslint" },
		css = { "stylelint" },
		scss = { "stylelint" },
		sass = { "stylelint" },
		json = { "jsonlint" },
		markdown = { "markdownlint" },
	}

	-- Configure fixers for React.js
	vim.g.ale_fixers = {
		javascript = { "eslint" },
		javascriptreact = { "eslint" },
		typescript = { "eslint" },
		typescriptreact = { "eslint" },
		css = { "stylelint" },
		scss = { "stylelint" },
		sass = { "stylelint" },
		json = { "fixjson" },
		markdown = { "prettier" },
	}

	-- Configure ALE options
	vim.g.ale_fix_on_save = 1 -- Fix files on save
	vim.g.ale_lint_on_text_changed = "normal" -- Lint files as you type
	vim.g.ale_lint_on_insert_leave = 1 -- Lint files when you leave insert mode
	vim.g.ale_sign_error = "" -- Error sign
	vim.g.ale_sign_warning = "" -- Warning sign
	vim.g.ale_sign_info = "" -- Info sign
	vim.g.ale_sign_style_error = "" -- Style error sign
	vim.g.ale_sign_style_warning = "" -- Style warning sign
	vim.g.ale_set_highlights = 1 -- Set highlights for errors and warnings
	vim.g.ale_echo_msg_format = "[%linter%] %s [%severity%]" -- Message format
	vim.g.ale_virtualtext_cursor = 1 -- Display virtual text at the cursor position
	vim.g.ale_typescript_prettier_use_local_config = 1 -- Use local Prettier configuration for TypeScript files
end

ale.setup()
