local actions = require("telescope.actions")
local builtin = require("telescope.builtin")
return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<C-u>"] = false,
            ["<esc>"] = actions.close,
          },
        },
      },
    },
    keys = function()
      return {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
        { "<leader>fg", builtin.live_grep, desc = "Grep Keywords" },
        { "<leader>fb", builtin.buffers, desc = "Find Files" },
        { "<leader>fr", builtin.oldfiles, desc = "Find Old Files" },
        { "<leader>ft", builtin.treesitter, desc = "Find Treesitter" },
        { "<leader>fm", builtin.marks, desc = "Find Marks" },
        { "<leader>fq", builtin.quickfix, desc = "Find Quickfix" },
        { "<leader>fs", builtin.current_buffer_fuzzy_find, desc = "Current Buffer Find" },
        { "<leader>fc", builtin.commands, desc = "Find Commands" },
        { "<leader>fo", builtin.resume, desc = "find Resume" },
        { "gs", builtin.grep_string, desc = "Grep Strings" },
      }
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
    },
  },
}
