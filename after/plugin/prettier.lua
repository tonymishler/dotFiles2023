--configure prettier to run on save for js, jsx, ts, tsx, json, css, scss, html, csharp and graphql files
--vim.cmd [[autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.json,*.css,*.scss,*.html,*.cs,csharpharp*.graphql Prettier]]
vim.cmd [[autocmd BufWritePre *.ts,*.tsx,*.json,*.css,*.scss,*.html,*.cs,csharpharp*.graphql Prettier]]
