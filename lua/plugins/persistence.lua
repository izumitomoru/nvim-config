return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  opts = {
    -- add any custom options here
    --dir = vim.fn.stdpath 'state' .. '/sessions/', -- directory where session files are saved
    --dir = vim.fn.stdpath 'state' .. '~/.config/nvim/sessions/', -- directory where session files are saved
    --dir = '~/.config/nvim/sessions/',
    dir = '/home/pebarch/.config/nvim/sessions/',

    -- make all variables stored in session (hopefully)
    globals,
    --      options,
    --      localoptions,
    --      --buffers,
    --      tabpages,
    --      --terminal,
    --
    --      --blank,
    help,
    curdir, -- opens to current directory (duh)
    --      sesdir, -- opens to directory session file is in
    --      resize,
    --      winsize,

    --vim.o.sessionoptions 'globals',

    -- 'globals,blank,buffers,curdir,folds,help,tabpages,winsize,terminal,options'

    -- minimum number of file buffers that need to be open to save
    -- Set to 0 to always save
    need = 1,
    branch = true, -- use git branch to save session
  },
  --config = function()
  --  require('persistence').setup {
  --    globals = true,
  --    options = true,
  --  }
  --end,
}
