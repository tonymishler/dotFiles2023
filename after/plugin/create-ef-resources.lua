 local dev = require("create-efr.dev")

vim.keymap.set("n", "<leader>e", dev.create_sql_migration_file)
