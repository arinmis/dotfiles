---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "oxocarbon",
	-- theme = "github_light",
}

  --[[
  --
  --
  --

M.plugins = {
  default_plugin_config_replace = {
    telescope = {
      defaults = {
        layout_strategy = 'bottom_pane',
        path_display = {"relative"},  -- Display relative paths
      },
      pickers = {
        find_files = {
          previewer = false,  -- Disable previewer for find_files picker
        },
        live_grep = {
          previewer = true,  -- Enable previewer for live_grep picker
        },
      },
      },
    },
}

  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require'nvim-tree'.setup {
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
          enable = true,  -- Enable update focused file
          update_cwd = true,  -- Update the current working directory
        },
      }    
    end,
  },
  {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
      require("telescope").setup {
        defaults = {
          -- layout_strategy = 'bottom_pane',
          path_display = {"relative"},  -- Display relative paths
        },
        pickers = {
          find_files = {
            previewer = false,  -- Disable previewer for find_files picker
          },
          live_grep = {
            previewer = true,  -- Enable previewer for live_grep picker
          },
        },
      }
    end
  }
  --]]

return M

