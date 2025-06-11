-- Inside your plugins table in lazy.lua or similar
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional: for icons
  config = function()
    require("lualine").setup {
      options = {
        theme = "auto",
        section_separators = '',
        component_separators = '',
      },
      sections = {
        lualine_a = { "mode" },      -- ← This shows NORMAL/INSERT/etc.
        lualine_b = { "branch" },
        lualine_c = { "filename" },
        lualine_x = { "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    }
  end,
}

