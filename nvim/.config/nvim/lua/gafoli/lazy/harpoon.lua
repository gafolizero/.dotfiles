return {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon"):setup()
    end,
    keys = {
      { "<leader>a", function() require("harpoon"):list():add() end, desc = "harpoon file", },
      { "<C-e>", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu", },
      { "<leader>s", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
      { "<leader>d", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
      { "<leader>k", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
      { "<leader>l", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
      { "<leader>;", function() require("harpoon"):list():select(5) end, desc = "harpoon to file 5", },
    },
  }
