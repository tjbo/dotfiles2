return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('bufferline').setup {
      options = {
        max_name_length = 17,
        numbers = 'none',
        themable = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_duplicate_prefix = false,
        always_show_bufferline = true,
      },
    }
  end,
}
