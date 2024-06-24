return {
  {
    "stevearc/conform.nvim",
    config = function()
      require "configs.conform"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = { 
        side =  "right",
        adaptive_size = true 
      },
      renderer = {
        icons = {
            padding = ' ',
        },
        indent_width = 1, -- This sets the width of the indentation
      },
      update_focused_file = {
        enable = true,  
        update_cwd = true, 
      },
    }    
  },
  {
    'nvim-telescope/telescope.nvim',
      opts = {
        defaults = {
          layout_strategy = 'bottom_pane',
          path_display = {"relative"}, 
          layout_config = {
            height = .7,  
            width = .8,   
            prompt_position = "bottom", 
          },
        },
        pickers = {
          find_files = {
            previewer = false,  
          },
          live_grep = {
            previewer = true,  
          },
        },
      }
  }
}
