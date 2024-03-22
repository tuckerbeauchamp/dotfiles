vim.api.nvim_exec([[ autocmd BufWritePre *.lua,*.js,*.jsx,*.tsx,*.ts,*.css,*.html,*.md Neoformat ]], false)
