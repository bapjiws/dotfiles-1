require("gitsigns").setup {
  signs = {
    add = {text = "", numhl = "GitGutterAdd"},
    change = {text = "", numhl = "GitGutterChange"},
    delete = {text = "", numhl = "GitGutterDelete"},
    topdelete = {text = "", numhl = "GitGutterDelete"},
    changedelete = {text = "", numhl = "GitGutterDelete"}
    --[[
    add = {hl = "GitGutterAdd", text = "│",numhl = "GitGutterAdd"},
    change = {hl = "GitGutterChange", text = "│",numhl = "GitGutterChange"},
    delete = {hl = "GitGutterDelete", text = "│",numhl = "GitGutterDelete"},
    topdelete = {hl = "GitGutterDelete", text = "│",numhl = "GitGutterDelete"},
    changedelete = {hl = "GitGutterDelete", text = "│",numhl = "GitGutterDelete"} ]]
  },
  numhl = true,
  keymaps = {
    noremap = true,
    buffer = true,
    ["n ]g"] = {expr = true, '&diff ? \']c\' : \'<cmd>lua require"gitsigns".next_hunk()<CR>\''},
    ["n [g"] = {expr = true, '&diff ? \'[c\' : \'<cmd>lua require"gitsigns".prev_hunk()<CR>\''},
    ["n <leader>hs"] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
    ["n <leader>hu"] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
    ["n <leader>hr"] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
    ["n <leader>hp"] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
    ["n <leader>hb"] = '<cmd>lua require"gitsigns".blame_line()<CR>',
    ["n <leader>ha"] = '<cmd>lua require"gitsigns".attach()<CR>',
    ["n <leader>hd"] = '<cmd>lua require"gitsigns".detach_all()<CR>'
  },
  watch_index = {
    interval = 1000
  },
  sign_priority = 6,
  status_formatter = nil
  -- status_formatter = function(status)
  -- local added = status.added > 0 and "  " .. status.added or ""
  -- local changed = status.changed > 0 and "  " .. status.changed or ""
  -- local removed = status.removed > 0 and "  " .. status.removed or ""
  -- return status.head .. added .. changed .. removed .. " "
  -- end
}
