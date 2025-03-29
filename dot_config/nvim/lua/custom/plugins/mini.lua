return {
  -- collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    require('mini.surround').setup()
    require('mini.comment').setup {
      mappings = {
        -- Normal and Visual modes
        comment = 'gc',
        -- Toggle comment on current line
        comment_line = 'gcc',
        -- Toggle comment on visual selection
        comment_visual = 'gc',
        -- Define 'comment' textobject (like `dgc` - delete whole comment block)
        textobject = 'gc',
      },
    }
  end,
}
