return {
 'nvim-telescope/telescope.nvim',
 tag = '0.1.2',
 dependencies = { 'nvim-lua/plenary.nvim' },
 lazy = false,
 config = function()
     local builtin = require('telescope.builtin')
     local telescope = require('telescope')
     local actions = require ('telescope.actions')
     -- Set up Telescope
     telescope.setup {
         defaults = {
             layout_strategy = 'horizontal', 
             layout_config = {
               horizontal = {
                  width = 0.9, 
                  height = 0.5,
               },
               prompt_position = 'top', 
             },
             mappings = {
                i = {
                    ["<C-e>"] = { "<esc>", type = "command" },
                    ["<C-c>"] = actions.close,
                },
             },
         },
     }

     -- Define your key mappings
     local opts = { noremap = true, silent = true }
     vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
     vim.api.nvim_set_keymap('n', '<leader>fc', '<cmd>Telescope live_grep<CR>', opts)
     vim.api.nvim_set_keymap('n', '<leader>Fc', '<cmd>Telescope current_buffer_fuzzy_find<CR>', opts)

     -- Append the highlight groups
     local TelescopeColor = {
         TelescopeMatching = { fg = "#B5E8B0" },
         TelescopeSelection = { fg = "#B5E8B0", bg = "#0E1B1B" },

         TelescopePromptTitle = { fg = "#0f1415", bg = "#FCA5A5", bold = true },
         TelescopePromptPrefix = { fg = "#B5E8B0" },
         TelescopePromptCounter = { fg = "#B5E8B0" },
         TelescopePromptNormal = { bg = "#0E1B1B" },
         TelescopePromptBorder = { fg = "#0E1B1B", bg = "#0E1B1B" },

         TelescopeResultsTitle = { fg = "#0f1415", bg = "#0f1415", bold = true },
         TelescopeResultsNormal = { bg = "#0f1415" },
         TelescopeResultsBorder = { fg = "#DD7373", bg = "#0f1415" },

         TelescopePreviewTitle = { fg = "#0f1415", bg = "#B5E8B0", bold = true },
         TelescopePreviewNormal = { bg = "#0f1415" },
         TelescopePreviewBorder = { fg = "#0f1415", bg = "#0f1415" },
     }

     for hl, col in pairs(TelescopeColor) do
         vim.api.nvim_set_hl(0, hl, col)
     end
 end,
}

