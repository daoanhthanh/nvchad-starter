local configs = {
  theme = 'doom',
  header = {
    type = 'text', -- 'text' | 'file' | 'custom'
    text = 'Welcome to Vim',
    text_hl = 'Title',
    file = '',
    file_hl = '',
    custom = function()
      return 'custom text'
    end,
  },
  shortcut = {
    -- action can be a function type
    { desc = string, group = 'highlight group', key = 'shortcut key', action = 'action when you press key' },
  },
  packages = { enable = true }, -- show how many plugins neovim loaded
  -- limit how many projects list, action when you press key or enter it will run this action.
  -- action can be a function type, e.g.
  -- action = func(path) vim.cmd('Telescope find_files cwd=' .. path) end
  project = { enable = true, limit = 8, icon = 'your icon', label = '', action = 'Telescope find_files cwd=' },
  mru = { enable = true, limit = 10, icon = 'your icon', label = '', cwd_only = false },
  footer = {},
  vertical_center = false, -- Center the Dashboard on the vertical (from top to bottom)
}


return configs
