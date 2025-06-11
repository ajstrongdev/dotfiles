return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify", -- optional, but nice
  },
  opts = {
    messages = {
      enabled = true,
      view = "notify", -- you can use "mini", "cmdline", "virtualtext", etc.
    },
    routes = {
      {
        filter = {
          event = "msg_showmode", -- this is what shows INSERT, VISUAL, etc
        },
        opts = { skip = false }, -- make sure not to skip it
      },
    },
    -- optional views config
    views = {
      notify = {
        replace = true,
        merge = true,
      },
    },
  },
}

