local map = require("utils").map
local api = vim.api
local fn = vim.fn

local prettier = {
  function()
    return {
      exe = "npx prettier",
      args = {
        "--stdin-filepath",
        api.nvim_buf_get_name(0),
        "--single-quote",
        "--arrow-parens 'avoid'",
        "--trailing-comma all"
      },
      stdin = true
    }
  end
}

local luafmt = {
  function()
    return {
      exe = "npx luafmt",
      args = {"--indent-count", 2, "--stdin"},
      -- args = {"-i", "--config", "~/.config/nvim/.luafmt", "--stdin"},
      stdin = true
    }
  end
}

require("formatter").setup(
  {
    logging = false,
    filetype = {
      javascript = prettier,
      javascriptreact = prettier,
      typescript = prettier,
      typescriptreact = prettier,
      json = prettier,
      css = prettier,
      html = prettier,
      svelte = prettier,
      vue = prettier,
      lua = luafmt
    }
  }
)

-- vim.api.nvim_command('autocmd BufWrite * :Format')
map("n", "<leader>cf", ":Format<CR>", {silent = true})
