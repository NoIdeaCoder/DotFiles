return {
   "Yazeed1s/oh-lucy.nvim",
   priority = 10000,
   lazy = false,
   config = function()
       -- Set the configurations
       vim.g.oh_lucy_italic_functions = false
       vim.g.oh_lucy_italic_comments = false
       vim.g.oh_lucy_evening_italic_functions = false
       vim.g.oh_lucy_evening_italic_comments = false
       vim.g.oh_lucy_transparent_background= true

       -- Load the colorscheme
       vim.cmd [[colorscheme oh-lucy]]
   end,
}

