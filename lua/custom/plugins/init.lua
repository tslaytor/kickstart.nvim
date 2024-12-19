-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ThePrimeagen/harpoon',
    config = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add file to Harpoon" })
      vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Toggle Harpoon menu" })

      vim.keymap.set("n", "<C-j>", function() ui.nav_file(1) end, { desc = "Navigate to Harpoon file 1" })
      vim.keymap.set("n", "<C-k>", function() ui.nav_file(2) end, { desc = "Navigate to Harpoon file 2" })
      vim.keymap.set("n", "<C-l>", function() ui.nav_file(3) end, { desc = "Navigate to Harpoon file 3" })
      vim.keymap.set("n", "<C-n>", function() ui.nav_file(4) end, { desc = "Navigate to Harpoon file 4" })
      vim.keymap.set("n", "<C-m>", function() ui.nav_file(5) end, { desc = "Navigate to Harpoon file 4" })
    end,
  },
   {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "ray-x/go.nvim",
    dependencies = {  -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },
  'tpope/vim-sleuth'
}
