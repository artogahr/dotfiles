-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
    config = function()
      require('noice').setup {
        lsp = {
          -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
          override = {
            ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
            ['vim.lsp.util.stylize_markdown'] = true,
            ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
          },
        },
        -- you can enable a preset for easier configuration
        presets = {
          bottom_search = true, -- use a classic bottom cmdline for search
          command_palette = true, -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false, -- add a border to hover docs and signature help
        },
      }
    end,
  },
  {
    'voldikss/vim-floaterm',
    init = function()
      vim.g.floaterm_borderchars = '─│─│╭╮╯╰'
      vim.g.floaterm_keymap_toggle = '<a-cr>'
    end,
  },
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration
      'nvim-telescope/telescope.nvim', -- optional
    },
    keys = {
      { '<leader>gt', '<cmd>Neogit<cr>', 'NeoGit' },
    },
    config = true,
  },
  { 'nvim-tree/nvim-web-devicons' },
  {
    'altermo/ultimate-autopair.nvim',
    event = { 'InsertEnter', 'CmdlineEnter' },
    branch = 'v0.6', --recommended as each new version will have breaking changes
    opts = {
      --Config goes here
    },
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      require('neo-tree').setup {
        popup_border_style = 'rounded',
        window = {
          mappings = {
            ['P'] = { 'toggle_preview', config = { use_float = false, use_image_nvim = true } },
          },
        },
      }
    end,
    keys = {
      { '<leader>t', '<cmd>Neotree toggle<cr>', 'NeoTree' },
    },
  },
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      vim.o.mousemoveevent = true
      vim.opt.termguicolors = true
      require('bufferline').setup {
        options = {
          hover = {
            enabled = true,
            delay = 200,
            reveal = { 'close' },
          },

          --- count is an integer representing total count of errors
          --- level is a string "error" | "warning"
          --- diagnostics_dict is a dictionary from error level ("error", "warning" or "info")to number of errors for each level.
          --- this should return a string
          --- Don't get too fancy as this function will be executed a lot
          diagnostics = 'nvim_lsp',
          diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match 'error' and ' ' or ' '
            return ' ' .. icon .. count
          end,
          separator_style = 'slant',
          offsets = {
            {
              filetype = 'neo-tree',
              text = 'NeoTree',
              highlight = 'Directory',
              separator = true, -- use a "true" to enable the default, or set your own character
            },
          },
        },
      }
    end,
  },
}
